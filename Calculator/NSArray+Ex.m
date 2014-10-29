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
    NSInteger temp = 0;
    for(int i = 0; i < [self count]; i++) {
        if([[self objectAtIndex:i]isKindOfClass:[NSString class]]) {
            temp++;
        }
    }
    return temp;
}

- (NSString *)concatAllStringsInArray {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(int i = 0; i < [self count]; i++) {
        if([[self objectAtIndex:i]isKindOfClass:[NSString class]]) {
            [array addObject:[self objectAtIndex:i]];
        }
    }
    return [array componentsJoinedByString:@""];
}

- (NSNumber *)maxNumberInArray {
    NSNumber *maxNumber = [self valueForKeyPath:@"@max.doubleValue"];
    return maxNumber;
}

- (NSArray *)substractArray:(NSArray *)arr {
    NSMutableArray *array = [NSMutableArray arrayWithArray:self];
    [array removeObjectsInArray:arr];
    NSArray *array1 = [array copy];
    return array1;
}
// from:2 to:5 => @[@2, @3, @4, @5]
// from:10 to:8 => @[@10, @9, @8]
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    if (fromVal < toValue) {
        array = [[NSMutableArray alloc]initWithCapacity:toValue-fromVal+1];
        for (int i = 0; i < toValue-fromVal+1; i++) {
            [array addObject:[NSNumber numberWithDouble: fromVal+i]];
        }
    } else {
        array = [[NSMutableArray alloc]initWithCapacity:fromVal-toValue+1];
        for (int i = 0; i < fromVal-toValue+1; i++) {
            [array addObject:[NSNumber numberWithDouble:fromVal-i]];
        }
    }
    NSArray *array1 = [array copy];
    return array1;
}

+ (NSArray *)charactersInString:(NSString *)str{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < [str length]; i++) {
        NSString *temp = [str substringWithRange:NSMakeRange(i, 1)];
        [array addObject:temp];
    }
    NSArray *array1 = [array copy];
    return array1;
}

@end


