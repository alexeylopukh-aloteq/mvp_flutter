#import "MvpFlutterPlugin.h"
#if __has_include(<mvp_flutter/mvp_flutter-Swift.h>)
#import <mvp_flutter/mvp_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mvp_flutter-Swift.h"
#endif

@implementation MvpFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMvpFlutterPlugin registerWithRegistrar:registrar];
}
@end
