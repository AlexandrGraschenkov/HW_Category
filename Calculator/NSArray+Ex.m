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
    
    NSInteger *count = 0;
    
    for (id cell in self){
        BOOL isString = [cell isKindOfClass:[NSString class]];
        if (isString){
            count++;
        }
    }
    return *count;
    
}


// @[@"123", @4, @"56"] -> @"12356"
- (NSString *)concatAllStringsInArray{
    NSString *result = @"";
    for (int i = 0; i < [self count]; i++) {
        if ([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            result  = [result stringByAppendingString: [self objectAtIndex:i]];
        }
    }
    return result;
}

// если нет чисел, возвращаем nil
- (NSNumber *)maxNumberInArray{
    
    int countNumbers = 0;
    NSNumber *max;
    
    for (int i = 0; i < [self count]; i++){
        if ([[self objectAtIndex:i] isKindOfClass:[NSNumber class]]){
            if (countNumbers == 0){
                max = [self objectAtIndex:i];
            }
            countNumbers++;
            if ([self objectAtIndex:i] > max){
                max = [self objectAtIndex:i];
            }
        }
    }
    
    if (countNumbers == 0){
        return nil;
    } else {
        return max;
    }
}

// результат = элементы, которые есть в первом массиве, но нет во втором
- (NSArray *)substractArray:(NSArray *)arr{
    NSMutableArray *result = [[NSMutableArray alloc]init];
    for (id element in self){
        if ([arr containsObject:element]){
            [result addObject:element];
        }
    }
    return result;
    
}

// from:2 to:5 => @[@2, @3, @4, @5]
// from:10 to:8 => @[@10, @9, @8]
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    NSInteger inc = toValue >= fromVal ? 1 : -1;
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSInteger i = fromVal; i <= toValue && i >= fromVal; i+=inc){
        NSNumber *numb = [NSNumber numberWithInt:i];
        [result addObject:numb];
    }
    return result;
}

// @"abc" -> @[@"a", @"b", @"c"]
+ (NSArray *)charactersInString:(NSString *)str{
    NSMutableArray *result = [[NSMutableArray alloc]init];
    for (int i = 0; i < [str length]; i++){
        [result addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    return result;
}

@end


