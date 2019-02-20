#import <Foundation/Foundation.h>
#import "handler.h"
#import "_cgo_export.h"

@implementation URLHandler
+ (void)registerSelf {
    [[NSAppleEventManager sharedAppleEventManager] setEventHandler:self andSelector:@selector(receiveEvent:withReplyEvent:) forEventClass:kInternetEventClass andEventID:kAEGetURL];
}
+ (void)receiveEvent:(NSAppleEventDescriptor *)event withReplyEvent:(NSAppleEventDescriptor *)replyEvent {
    NSString *url = [[event paramDescriptorForKeyword:keyDirectObject] stringValue];
    callHandler([url UTF8String]);
}
@end

void init() {
    [URLHandler registerSelf];
}