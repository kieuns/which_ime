//
//  AppDelegate.h
//  whichime
//
//  Created by 문기은 on 2022/12/11.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSTextField* textField;
    IBOutlet NSScrollView* scrollView;
    
    // 타이머
    NSTimer* timer;
}

- (void)starTimer;
- (void)stopTimer;
- (void)onTimer:(NSTimer*)timer;
- (IBAction)onClick:(id)sender; // 버튼 반응


@end

