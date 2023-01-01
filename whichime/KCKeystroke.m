#import "KCKeystroke.h"
#import "KCKeystrokeTransformer.h"

@implementation KCKeystroke {
    NSString *_characters;
    NSString *_charactersIgnoringModifiers;
}

- (instancetype)initWithNSEvent:(NSEvent *)event {
    self = [super initWithNSEvent:event];
    if (!self) {
        return nil;
    }
    
    _keyCode = event.keyCode;
    _characters = [event.characters copy];
    _charactersIgnoringModifiers = [event.charactersIgnoringModifiers copy];
    
    return self;
}

- (void)dealloc {
    //[_charactersIgnoringModifiers release];
    _charactersIgnoringModifiers = nil;
    
    //[_characters release];
    _characters = nil;
    
    //[super dealloc]; // auto-release
}

/**
 A KeyStroke is a command if it includes a CMD or CTRL key; option and shift are only considered modifiers.
 */
- (BOOL)isCommand {
    return (self.modifierFlags & (NSEventModifierFlagControl | NSEventModifierFlagCommand)) != 0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<KCKeystroke: keyCode: %hu, modifiers: %lu, characters: %@, charactersIgnoringModifiers: %@>",
            self.keyCode, self.modifierFlags, _characters, _charactersIgnoringModifiers];
}

@end

