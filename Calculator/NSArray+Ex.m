//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSInteger)countNSStringElements
{
    NSInteger count = 0;
    for (NSString *string in self) {
        if ([string isKindOfClass: [NSString class]])
            count++;
    }
    return count;
}

- (NSString *)concatAllStringsInArray
{
    NSMutableString *concat = [NSMutableString new];
    for (NSString *string in self) {
        if ([string isKindOfClass: [NSString class]])
            concat = [concat stringByAppendingString:string];
    }
    return concat;
}

- (NSNumber *)maxNumberInArray
{
    NSNumber* max;
    if (self.count == 0){
        max = nil;
    } else {
        max = self[0];
        for (NSNumber *i in self){
            if ([i floatValue] > [max floatValue]){
                max = i;
            }
        }
    }
    return max;
}


- (NSArray *)substractArray:(NSArray *)arr
{
    NSMutableArray* array = [NSMutableArray new];
    for (int i = 0; i < self.count; i++){
        if (![arr containsObject:self[i]]){
            [array addObject:self[i]];
        }
    }
    return array;
}

+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue
{
    NSInteger length = abs(toValue - fromVal) + 1;
    NSMutableArray* array = [[NSMutableArray alloc] initWithCapacity:length];
    if (fromVal < toValue) {
        for (int i = fromVal; i <= toValue; i++) {
            [array addObject:@(i)];
        }
    } else {
        for (int i = fromVal; i >= toValue; i--) {
            [array addObject:@(i)];
        }
    }
    return array;
}

+ (NSArray *)charactersInString:(NSString *)str
{
    NSMutableArray* array = [[NSMutableArray alloc] initWithCapacity:str.length];
    for (NSInteger i = 0; i < str.length; i++) {
        //NSString* chars  = [NSString stringWithFormat: @"%c",[str characterAtIndex: i]];
        //[array addObject: chars];
        [array addObject:[str substringWithRange:NSMakeRange(i,1)]];
    }
    return array;
}
@end


