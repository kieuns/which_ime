//
//  KCVisualizer.h
//  whichime
//
//  Created by Gins on 2022/12/14.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface KCVisualizer : NSObject
-(NSView*) preferencesView;
-(NSString*) visualizerName;

-(void) showVisualizer:(id)sender;
@end
