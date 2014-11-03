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
    NSInteger count=0;
    for (int i=0; i<[self count]; i++) {
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]])
            count++;
    }
    return count;
}

- (NSString *)concatAllStringsInArray
{
    NSString *str=@"";
    for (int i=0; i<[self count]; i++) {
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]])
            str = [str stringByAppendingString:[self objectAtIndex:i]];
    }
    
    return str;
}

- (NSNumber *)maxNumberInArray
{
    NSNumber *max = [self objectAtIndex:0];
    
    for (int i=0; i<[self count]; i++)
        if([[self objectAtIndex:i] compare:max] == NSOrderedDescending)
            max = [self objectAtIndex:i];
    
    return max;
}

- (NSArray *)substractArray:(NSArray *)arr
{
    NSMutableArray *array =[NSMutableArray new];
    for (id obj in self) {
        if(![arr containsObject:obj]){
            [array addObject:obj];
        }
    }
    return array;
}

+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue
{
    NSMutableArray *array = [NSMutableArray new];
    if(fromVal < toValue)
    {
        for (NSInteger i=fromVal; i<=toValue; i++) {
            [array addObject:[[NSNumber alloc] initWithDouble:i]];
        }
    }
    else
    {
        for (NSInteger i=fromVal; i>=toValue; i--) {
            [array addObject:[[NSNumber alloc] initWithDouble:i]];
            
        }
    }
    return array;
}

+ (NSArray *)charactersInString:(NSString *)str
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (int i=0; i<[str length]; i++) {
        [array addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    return array;
}

@end


