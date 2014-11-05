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
    NSInteger count=0;
    for (NSString *str in self) {
        if ([str isKindOfClass: [NSString class]])
            count++;
    }
    return count;
}

- (NSString *)concatAllStringsInArray {
    NSMutableString *con = [NSMutableString new];
    for (NSString *str in self) {
        if ([str isKindOfClass: [NSString class]])
            con=[con stringByAppendingString:str];
    }
    return con;
}

- (NSNumber *)maxNumberInArray {
    NSNumber* max;
    if (self.count==0){
        max = nil;
    } else {
        max=self[0];
        for (NSNumber *i in self){
            if ([i floatValue] > [max floatValue]){
                max=i;
            }
        }
    }
    return max;
}

- (NSArray *) substractArray:(NSArray *) arr {
    NSMutableArray* arr1 = [NSMutableArray new];
    for (int i = 0; i < self.count; i++){
        if (![arr containsObject:self[i]]){
            [arr1 addObject:self[i]];
        }
    }
    return arr1;
}

+ (NSArray *) numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue {
    NSInteger length = abs(toValue) +1;
    NSMutableArray *arr = [[NSMutableArray alloc]initWithCapacity:length];
    if (fromVal < toValue) {
        for (int i = fromVal; i<= toValue; i++) {
            [arr addObject:@(i)];
        }
    }
    return arr;
}

+(NSArray *) charactersInString:(NSString *)str {
    NSMutableArray *arr = [[NSMutableArray alloc]initWithCapacity:str.length];
    for (NSInteger i=0; i<str.length; i++) {
        [arr addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    return arr;
}
@end


