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
    for (id value in self)
    {
        if([value isKindOfClass:[NSString class]])
            count++;
    }
    return count;
}

- (NSString *)concatAllStringsInArray
{
    NSString *concatStr = @"";
    for (id value in self)
    {
        if([value isKindOfClass:[NSString class]])
            concatStr = [concatStr stringByAppendingString:value];
    }
    return concatStr;
}

- (NSNumber *)maxNumberInArray
{
    NSNumber *maxNumber = nil;
    for (id value in self)
    {
        if([value isKindOfClass:[NSNumber class]])
        {
            NSComparisonResult result;
            if(maxNumber)
            {
                result = [value compare:maxNumber];
            
                if (result == NSOrderedDescending)
                {
                    maxNumber = value;
                }
            }
            else maxNumber = value;
        }
        
    }
    
    return maxNumber;
}

- (NSArray *)substractArray:(NSArray *)arr
{
    NSMutableArray *substractArr = [NSMutableArray new];
    substractArr = [NSMutableArray arrayWithArray:self];
    for (id value in self)
        for (id valueArr in arr)
        {
            if ([value isEqual:valueArr])
            {
                [substractArr removeObject:value];
            }
        }
        return substractArr;
}

+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue
{
    NSMutableArray *numArr = [NSMutableArray new];
    NSInteger range = toValue-fromVal;
    for (NSInteger i=0; i<abs(range)+1; i++)
    {
        if(range>0)[numArr addObject:[NSNumber numberWithInteger:fromVal+i]];
        else [numArr addObject:[NSNumber numberWithInt:fromVal-i]];
    }
    return numArr;
}

+ (NSArray *)charactersInString:(NSString *)str
{
    NSMutableArray *charArr = [NSMutableArray new];
    for (NSInteger i=0; i<str.length; i++)
        [charArr addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    return charArr;
}

@end


