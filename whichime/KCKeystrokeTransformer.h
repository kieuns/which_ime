//
//  KCKeystrokeTransformer.h
//  whichime
//
//  Created by Gins on 2022/12/26.
//

#import <Foundation/Foundation.h>

@interface KCKeystrokeTransformer : NSValueTransformer

+ (id)currentTransformer;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

+ (BOOL)allowsReverseTransformation;
+ (Class)transformedValueClass;

- (id)transformedValue:(id)value;

@end
