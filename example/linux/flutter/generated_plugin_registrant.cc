//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <mvp_flutter/mvp_flutter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) mvp_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MvpFlutterPlugin");
  mvp_flutter_plugin_register_with_registrar(mvp_flutter_registrar);
}
