//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)
- (NSInteger)countNSStringElements;
{
    NSInteger c = 0;
    for (NSString *i in self) {
        if ([i isKindOfClass:[NSString class]]) {
            c++;
        }
    }
    return c;
}

- (NSString *)concatAllStringsInArray
{
    NSString *str = @"";
    for (NSString *i in self) {
        if ([i isKindOfClass:[NSString class]]) {
            str = [str stringByAppendingString:i];
        }
    }
    return str;
}

- (NSNumber *)maxNumberInArray
{
    NSNumber *numb = [NSNumber numberWithFloat:-MAXFLOAT];
    for (NSNumber *i in self){
        if ([i isKindOfClass:[NSNumber class]]) {
            if ([i floatValue] > [numb floatValue]) {
                numb = i;
            }
        }
    }
    return numb;
}


- (NSArray *)substractArray:(NSArray *)arr{
    NSMutableArray *finalArr = [[NSMutableArray alloc] init];
    NSInteger *check = 0;
    for (NSArray *i in self){
        for (NSArray *j in arr){
            if ([i isEqual:j]) {
                check = 1;
            }
        }
        if (check == 0) {
            [finalArr addObject:i];
        }
        check = 0;
    }
    return finalArr;
}

+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue
{
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    if (fromVal < toValue) {
        while (fromVal <= toValue) {
            [arr addObject:[NSNumber numberWithInt:fromVal]];
            fromVal++;
        }
    } else if (fromVal > toValue) {
        while (fromVal >= toValue) {
            [arr addObject:[NSNumber numberWithInt:fromVal]];
            fromVal--;
        }
    }
    return arr;
}
+ (NSArray *)charactersInString:(NSString *)str
{
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    for (int i = 0; i < str.length; i++) {
        [arr addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    return arr;
}
@end


