//
//  NSArray+Ex.h
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>


// для сравнения обьектов используйте метод isEqual:, == будет работать некорректно
// для того чтобы получить подстрочку в NSString используйте substringWithRange:

@interface NSArray (Ex)

// возвращает количество строк в массиве
- (NSInteger)countNSStringElements;

// @[@"123", @4, @"56"] -> @"12356"
- (NSString *)concatAllStringsInArray;

// если нет чисел, возвращаем nil
- (NSNumber *)maxNumberInArray;

// результат = элементы, которые есть в первом массиве, но нет во втором
- (NSArray *)substractArray:(NSArray *)arr;

// from:2 to:5 => @[@2, @3, @4, @5]
// from:10 to:8 => @[@10, @9, @8]
+ (NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue;

// @"abc" -> @[@"a", @"b", @"c"]
+ (NSArray *)charactersInString:(NSString *)str;

@end
