//
//  KCVisualizer.h
//  whichime
//
//  Created by Gins on 2022/12/14.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@class KCKeystroke;

// 프로토콜: 메서드 정의 모음. 변수 선언도 되는 모냥.
// @requried : 반드시 구현
// @optional :
@protocol KCVisualizer <NSObject>
-(NSView*) preferencesView;
-(NSString*) visualizerName;
-(void) showVisualizer:(id)sender;
-(void) hideVisualizer:(id)sender;
-(void) noteKeyEvent:(KCKeystroke*)keystroke;
@end


@protocol KCVisualizerFactory
-(NSString*) visualizerNibName;
-(Class) visualizerClass;
-(id<KCVisualizer>) constructVisualizer;
-(NSString*) visualizerName;
@end


@interface KCVisualizer : NSObject <KCVisualizer> {
    IBOutlet NSView* preferencesView;
}
+(void) registerVisualizerFactory:(id<KCVisualizerFactory>)factory withName:(NSString*)name;
+(id<KCVisualizer>) visualizerWithName:(NSString*)visualizerName;
+(NSArray*) availableVisualizerFactories;
@end


@interface KCVisualizerFactory : NSObject <KCVisualizerFactory> {
}
-(id<KCVisualizer>) constructVisualizer;
@end

