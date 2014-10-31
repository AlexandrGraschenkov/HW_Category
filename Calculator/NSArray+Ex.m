//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSInteger)countNSStringElements{
    NSInteger countString = 0;
    for(int i = 0; i < [self count] - 1; i++){
        if([self[i] isKindOfClass:[NSString class]]){
            countString++;
        }
    }
    return countString;
}

- (NSString *)concatAllStringsInArray{
    NSString *allString = @"";
    for (int i = 0; i < [self count] - 1; i++) {
        if ([self isKindOfClass:[NSString class]]) {
            allString = [allString stringByAppendingString:self[i]];
        }
    }
    return allString;
}

- (NSNumber *)maxNumberInArray{
    NSNumber *max;
    for (int i = 0; i < [self count] - 1; i++) {
        max = self[0];
        if(self[i] > max){
            max = self[i];
        }
        else {
            return nil;
        }
    }
    return max;
}

- (NSArray *)substractArray:(NSArray *)arr{
    NSMutableArray *resultArray;
    for (int i = 0; i < [self count] - 1; i++) {
        for( int j = 0; j < [arr count] - 1; j++){
            if(![self[i] isEqual:arr[j]]){
                [resultArray addObject: self[i]];
            }
        }
    }
    return resultArray;
}

+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    NSMutableArray *array;
    if(fromVal < toValue){
        for (NSInteger i = fromVal; i < toValue; i++){
            [array addObject:[NSNumber numberWithLong:i]];
        }
    }
    else{
        for (NSInteger i = fromVal; i > toValue; i--){
            [array addObject: [NSNumber numberWithLong:i]];
        }
    }
    return array;
}

+ (NSArray *)charactersInString:(NSString *)str{
    int i = 0;
    NSMutableArray *array;
    while (i < [str length]) {
        NSRange range = NSMakeRange(i, 1);
        NSString *partOfString = [str substringWithRange:range];
        [array addObject:partOfString];
        i++;
    }
    return array;
}

@end