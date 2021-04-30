#import "FlutterNewRelicPlugin.h"
#if __has_include(<flutter_new_relic/flutter_new_relic-Swift.h>)
#import <flutter_new_relic/flutter_new_relic-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_new_relic-Swift.h"
#endif

@implementation FlutterNewRelicPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNewRelicPlugin registerWithRegistrar:registrar];
}
@end
