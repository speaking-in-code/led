#import "LedPlugin.h"
#if __has_include(<led/led-Swift.h>)
#import <led/led-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "led-Swift.h"
#endif

@implementation LedPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLedPlugin registerWithRegistrar:registrar];
}
@end
