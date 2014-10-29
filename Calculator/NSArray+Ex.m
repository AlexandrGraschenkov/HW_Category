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
    NSInteger result=0;
    for(int i=0; i<[self count]; i++){
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            result++;
        }
    }
    return result;
}
- (NSString *)concatAllStringsInArray{
    NSMutableArray *arr=[[NSMutableArray alloc]init];
    for (int i=0; i<[self count]; i++) {
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            [arr addObject:[self objectAtIndex:i]];
        }
    }
    return [arr componentsJoinedByString:@""];
}
- (NSNumber *)maxNumberInArray{
    NSNumber *xmax = [NSNumber numberWithFloat:-MAXFLOAT];
    for (NSNumber *val in self) {
        NSNumber *x = val;
        if ([x floatValue] > [xmax floatValue]) xmax = x;
    }
    NSNumber *result = xmax;
    return result;
}
- (NSArray *)substractArray:(NSArray *)arr{
    //Unique elements
    NSMutableArray *mutableResult=[[NSMutableArray alloc]init];
    for (int i=0; i<[self count]; i++) {
        if (![arr containsObject:[self objectAtIndex:i]]) {
            [mutableResult addObject:[self objectAtIndex:i]];
        }
    }
    NSArray *result = [mutableResult copy];
    return result;
}
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    NSInteger range = 0;
    NSMutableArray *mutableResult=[[NSMutableArray alloc]init];
    if (fromVal<toValue) {
        range=(toValue-fromVal)+1;
        for (int i=0; i<range; i++) {
            [mutableResult addObject:[NSNumber numberWithLong:(fromVal+i)]];
        }
    } else if (fromVal>toValue){
        range=(fromVal-toValue)+1;
        for (int i=0; i<range; i++) {
            [mutableResult addObject:[NSNumber numberWithLong:(fromVal-i)]];
        }
    }
    NSArray *result = [mutableResult copy];
    return result;
}
+ (NSArray *)charactersInString:(NSString *)str{
    NSMutableArray *mutableResult = [[NSMutableArray alloc]init];
    NSString *temp;
    for (int i=0; i<[str length]; i++) {
        temp=[str substringWithRange:NSMakeRange(i, 1)];
        [mutableResult addObject: temp];
    }
    NSArray *result = [mutableResult copy];

    return result;
}
@end
