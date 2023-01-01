//
//  KCKeystroke.h
//  whichime
//
//  Created by Gins on 2022/12/26.
//

#import <Cocoa/Cocoa.h>
#import "KCKeycastrEvent.h"

NS_ASSUME_NONNULL_BEGIN

@interface KCKeystroke : KCKeycastrEvent
@property (nonatomic, readonly) uint16_t keyCode;
- (BOOL)isCommand;
@end

NS_ASSUME_NONNULL_END
