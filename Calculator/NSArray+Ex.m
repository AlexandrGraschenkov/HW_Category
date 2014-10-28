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
    NSUInteger a = [self count];
    for(int i=0; i<a; i++){
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            result++;
        }
    }
    return result;
}
- (NSString *)concatAllStringsInArray{
    return [self concatAllStringsInArray];
    //return [self componentsJoinedByString:@""];
}
- (NSNumber *)maxNumberInArray{
    NSNumber *result=[self objectAtIndex:0];
    BOOL b=false;
    for(int i=0; i<self.count; i++){
        if([[self objectAtIndex:i] isKindOfClass:[NSNumber class]]){
            b=true;
        }
    }
    for (NSNumber *val in self) {
        if (([val isKindOfClass:[NSNumber class]])&&(result<val)) {
            result=val;
        }
    }
    if (b==true) {
        return result;
    } else {
        return nil;
    }
}
- (NSArray *)substractArray:(NSArray *)arr{
    //Unique elements
    NSMutableArray *mutableResult;
    NSInteger index = [self count];
    for (int i=0;i<index; i++) {
        if (![self containsObject:[arr objectAtIndex:i]]) {
            [mutableResult addObject:[arr objectAtIndex:i]];
        }
    }
    NSArray *result = [mutableResult copy];
    return result;
}
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    NSInteger range = 0;
    NSMutableArray *mutableResult=[[NSMutableArray alloc]initWithCapacity:range];
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
    NSMutableArray *mutableResult = [NSMutableArray array];
    for (int i=0; i<[str length]; i++) {
        NSString *temp=[str substringWithRange:NSMakeRange(i, 1)];
        [mutableResult addObject:temp];
    }
    NSArray *result = [mutableResult copy];
    return result;
}
@end
