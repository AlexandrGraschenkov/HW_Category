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
    for(NSString *val in self)
        if ([val isKindOfClass:[NSString class]])
            count++;
    
    return count;
}

- (NSString *)concatAllStringsInArray
{
    NSString *wrdsSum = @"";
    NSString *str;
    for (NSString *val in self)
        if ([val isKindOfClass:[NSString class]])
            wrdsSum = [wrdsSum stringByAppendingString:val];
    return wrdsSum;
}

- (NSNumber *)maxNumberInArray
{
    NSNumber *a = [NSNumber numberWithFloat:-MAXFLOAT];
    for (NSNumber *val in self)
        if ([val isKindOfClass:[NSNumber class]])
            if([val floatValue] > [a floatValue])
                a = val;
    return a;
}

- (NSArray *)substractArray:(NSArray *)arr
{
    int p;
    NSMutableArray *arra = [[NSMutableArray alloc] init];
    for (NSArray *i in self) {
        p = 0;
        for (NSArray *j in arr) {
            if ([i isEqual:j]) {
                p = 1;
            }
        }
        if (p == 0)
            [arra addObject:i];
    }
    return arra;
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
    NSString *ch;
    for (int i = 0; i < str.length; i++) {
        ch = [str substringWithRange:NSMakeRange(i, 1)];
        [arr addObject:ch];
    }
    return arr;
}

@end


