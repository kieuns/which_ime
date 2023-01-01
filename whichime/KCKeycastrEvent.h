//
//  KCKeycastrEvent.h
//  whichime
//
//  Created by Gins on 2022/12/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KCKeycastrEvent : NSObject

@property (nonatomic, readonly) NSEventType type;
@property (nonatomic, readonly) NSEventModifierFlags modifierFlags;

+(instancetype)eventWithNSEvent:(NSEvent*)event;

-(instancetype)initWithNSEvent:(NSEvent*)event NS_DESIGNATED_INITIALIZER;
-(instancetype)init NS_UNAVAILABLE;
-(NSString*)convertToString;
@end

NS_ASSUME_NONNULL_END

