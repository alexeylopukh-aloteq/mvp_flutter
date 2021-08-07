import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import 'view_model.dart';

abstract class Presenter<M extends ViewModel> {
  late M model;
  BehaviorSubject<M> _subject = BehaviorSubject<M>();
  late BuildContext context;
  Stream<M> get stream => _subject.stream;

  Presenter(this.model);

  void initWithContext(BuildContext context) {
    bool firstInit = false;
    try {
      // ignore: unnecessary_statements
      this.context.hashCode != 0;
    } catch (e) {
      firstInit = true;
    }
    this.context = context;
    if (firstInit) onInitWithContext();
  }

  void onInitWithContext() {}

  void dispose() {
    _subject.close();
  }

  void updateView() {
    if (!_subject.isClosed) _subject.sink.add(model);
  }
}
