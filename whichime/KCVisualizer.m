//
//  KCVisualizer.m
//  whichime
//
//  Created by Gins on 2022/12/14.
//

#import "KCVisualizer.h"


@interface KCVisualizer (Private)
+(NSMutableDictionary*) _registry;
@end


@implementation KCVisualizer

+(NSMutableDictionary*) _registry
{
    static NSMutableDictionary* registry = nil;
    if (registry == nil)
        registry = [[NSMutableDictionary alloc] initWithCapacity:2];
    return registry;
}

+(void) registerVisualizerFactory:(id<KCVisualizerFactory>)factory withName:(NSString*)name
{
    [[KCVisualizer _registry] setObject:factory forKey:name];
}

+(id<KCVisualizer>) visualizerWithName:(NSString*)visualizerName
{
    return [[[KCVisualizer _registry] objectForKey:visualizerName] constructVisualizer];
}

+(NSArray*) availableVisualizerFactories
{
    return [[KCVisualizer _registry] allValues];
}

-(NSView*) preferencesView
{
    return preferencesView;
}

-(NSString*) visualizerName
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

-(void) showVisualizer:(id)sender
{
    [self doesNotRecognizeSelector:_cmd];
}

-(void) hideVisualizer:(id)sender
{
    [self doesNotRecognizeSelector:_cmd];
}

-(void) deactivateVisualizer:(id)sender
{
    [self doesNotRecognizeSelector:_cmd];
}

-(void) noteKeyEvent:(KCKeystroke*)keystroke
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)noteFlagsChanged:(NSEventModifierFlags)flags
{
    // Default implementation does nothing.
}

//- (void)noteMouseEvent:(KCMouseEvent *)mouseEvent
//{
//    [self doesNotRecognizeSelector:_cmd];
//}

@end



@implementation KCVisualizerFactory

-(NSString*) visualizerNibName
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

-(Class) visualizerClass
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

-(id<KCVisualizer>) constructVisualizer
{
    Class c = [self visualizerClass];
//    id<KCVisualizer> v = [[[c alloc] init] autorelease];
//    NSNib* nib = [[[NSNib alloc] initWithNibNamed:[self visualizerNibName] bundle:[NSBundle bundleForClass:[self class]]] autorelease];
    id<KCVisualizer> v = [[c alloc] init];
    NSNib* nib = [[NSNib alloc] initWithNibNamed:[self visualizerNibName] bundle:[NSBundle bundleForClass:[self class]]];
    if (![nib instantiateWithOwner:v topLevelObjects:nil]) {
        return nil;
    }
    return v;
}

-(NSString*) visualizerName
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
