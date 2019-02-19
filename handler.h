#import <Foundation/Foundation.h>

@interface URLHandler : NSObject
+ (void)registerSelf;
+ (void)receiveEvent:(NSAppleEventDescriptor *)event withReplyEvent:(NSAppleEventDescriptor *)replyEvent;
@end

void init();