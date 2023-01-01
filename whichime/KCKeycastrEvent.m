//
//  KCKeycastrEvent.m
//  whichime
//
//  Created by Gins on 2022/12/26.
//

#import <AppKit/AppKit.h>
#import <QuartzCore/QuartzCore.h>
#import "KCKeystrokeTransformer.h"
#import "KCKeycastrEvent.h"

@implementation KCKeycastrEvent {
    NSEventType _type;
    NSEventModifierFlags _modifierFlags;
}

+(instancetype)eventWithNSEvent:(NSEvent *)event {
    return [[self alloc] initWithNSEvent:event];
    //return [[[self alloc] initWithNSEvent:event] autorelease];
}

-(instancetype)initWithNSEvent:(NSEvent *)event {
    self = [super init];
    if(!self) { return nil; }
    _type = event.type;
    _modifierFlags = event.modifierFlags;
    return self;
}

-(NSString*)convertToString {
    return [[KCKeystrokeTransformer currentTransformer] transformedValue:self];
}
@end
