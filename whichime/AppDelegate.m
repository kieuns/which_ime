//
//  AppDelegate.m
//  whichime
//
//  Created by 문기은 on 2022/12/11.
//

#import "AppDelegate.h"
#import <ShortcutRecorder/ShortcutRecorder.h>

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSLog(@"applicationDidFinishLaunching");
//    NSLog(@"GC = %@", [NSGarbage])
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"applicationWillTerminate");
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    NSLog(@"applicationSupportsSecureRestorableState");
    return YES;
}

- (void)starTimer {
    NSLog(@"timer:start");
    [self stopTimer];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(onTimer:) userInfo:nil repeats:NO];
}

- (void)stopTimer {
    if(timer != nil) {
        NSLog(@"timer:stopTimer");
        [timer invalidate];
        //[timer release];
        timer = nil;
    }
}

- (void)onTimer:(NSTimer*)timer {
    NSLog(@"onTimer");
    [self stopTimer];
}

- (IBAction)onClick:(id)sender {
    NSLog(@"onClick");
    [self starTimer];
}

@end
