#import "ShopifyPlugin.h"
#if __has_include(<shopify/shopify-Swift.h>)
#import <shopify/shopify-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "shopify-Swift.h"
#endif

@implementation ShopifyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShopifyPlugin registerWithRegistrar:registrar];
}
@end
