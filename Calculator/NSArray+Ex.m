//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSInteger)countNSStringElements {
    NSInteger res = 0;
    for (NSString *str in self) {
        res++;
    }
    return res;
}

- (NSString *)concatAllStringsInArray {
    NSString *result = @"";
    for (NSString *str in self) {
        result = [result stringByAppendingString:str];
    }
    return result;
}

- (NSNumber *)maxNumberInArray {
    NSNumber *maxNumber = [self objectAtIndex:0];
    for (NSNumber *num in self) {
        if (num > maxNumber) maxNumber = num;
    }
    return maxNumber;
    
}

// результат = элементы, которые есть в первом массиве, но нет во втором
- (NSArray *)substractArray:(NSArray *)arr {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSObject *array1 in self) {
        BOOL check = NO;
        for (NSObject *array2 in arr) {
            if ([array1 isEqual:array2]) check = true;
        }
        if (!check) [result addObject:array1];
    }
    NSArray *res = [result copy];
    return res;
}

// from:2 to:5 => @[@2, @3, @4, @5]
// from:10 to:8 => @[@10, @9, @8]
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    if (toValue >= fromVal) {
        for (int i = fromVal; i <= toValue; i++) {
            [result addObject: [NSString stringWithFormat:@"%d", i]];
        }
    } else {
        for (int i = fromVal; i <= toValue; i--) {
            [result addObject: [NSString stringWithFormat:@"%d", i]];
        }
    }
    NSArray *arr = [result copy];
    return arr;
}

// @"abc" -> @[@"a", @"b", @"c"]
+ (NSArray *)charactersInString:(NSString *)str {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSRange range;
    for (int i = 0; i <[str length]; i++) {
        range = NSMakeRange(i, i);
        [result addObject: [str substringWithRange:range]];
    }
    NSArray *arr = [result copy];
    return arr;
}




@end


