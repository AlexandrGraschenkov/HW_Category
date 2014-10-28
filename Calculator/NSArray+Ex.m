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
    for (id obj in self) {
        if ([obj isKindOfClass:[NSString class]]) res++;
    }
    return res;
}

- (NSString *)concatAllStringsInArray {
    NSString *result = @"";
   for (id obj in self) {
       if ([obj isKindOfClass:[NSString class]]) result = [result stringByAppendingString:obj];
    }
    return result;
}

- (NSNumber *)maxNumberInArray {
    NSNumber *maxNumber = nil;
    for (id obj in self) {
        if ([obj isKindOfClass:[NSNumber class]]) {
            if (maxNumber == nil) maxNumber = obj;
            if ([obj compare:maxNumber] == 1) maxNumber = obj;
        }
    }
    return maxNumber;
    
}

// результат = элементы, которые есть в первом массиве, но нет во втором
- (NSArray *)substractArray:(NSArray *)arr {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id array1 in self) {
        BOOL check = NO;
        for (id array2 in arr) {
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
    if (toValue > fromVal) {
        for (int i = fromVal; i <= toValue; i++) {
            [result addObject:[NSNumber numberWithInt:i]];
        }
    } else {
        for (int i = fromVal; i >= toValue; i--) {
            [result addObject:[NSNumber numberWithInt:i]];
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
        range = NSMakeRange(i, i+1);
        [result addObject: [str substringWithRange:range]];
    }
    NSArray *arr = [result copy];
    return arr;
    return nil;
}




@end


