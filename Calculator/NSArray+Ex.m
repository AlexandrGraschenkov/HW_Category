//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

// возвращает количество строк в массиве
- (NSInteger)countNSStringElements{
    NSInteger cnt = 0;
    for(int i = 0; i < [self count]; i++){
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            cnt++;
        }
    }
    return cnt;
}

// @[@"123", @4, @"56"] -> @"12356"
- (NSString *)concatAllStringsInArray{
    
    NSString *str = @"";
    
    for (int i=0; i < [self count]; i++) {
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            str = [str stringByAppendingString:[self objectAtIndex:i]];
        }
    }
    return str;
}


// если нет чисел, возвращаем nil
- (NSNumber *)maxNumberInArray{
    if ([self count] == 0) {
        nil;
    }
    NSNumber *max = self[0];
    
    for (int i = 1; i < self.count; i++) {
        if ([max floatValue] < [self[i] floatValue]) {
            max = self[i];
        }
    }
    
    return max;
}

// результат = элементы, которые есть в первом массиве, но нет во втором
- (NSArray *)substractArray:(NSArray *)arr{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int i = 0; i<[self count]; i++){
        if (![arr containsObject: self[i]]) {
            [result addObject:self[i]];
        }
        
    }
    return result;
}

// from:2 to:5 => @[@2, @3, @4, @5]
// from:10 to:8 => @[@10, @9, @8]
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    
    
    NSMutableArray *arr1 = [[NSMutableArray alloc]init];
    
    if (fromVal < toValue) {
        for(NSInteger i = fromVal; i <= toValue; i++)
        {
            [arr1 addObject: [NSNumber numberWithLong: i]];
        }
        
    } else {
        for(NSInteger i = fromVal; i >= toValue; i--)
        {
            [arr1 addObject: [NSNumber numberWithLong: i]];
        }
        
    }
    return arr1;
}

// @"abc" -> @[@"a", @"b", @"c"]
+ (NSArray *)charactersInString:(NSString *)str{
    NSMutableArray *myArr = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < [str length]; i++)
    {
        [myArr addObject: [str substringWithRange:NSMakeRange(i, 1)]];
    }
    
    return myArr;
}


@end


