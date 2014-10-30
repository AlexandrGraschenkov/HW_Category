//
// NSArray+Ex.m
// Calculator
//
// Created by Alexander on 24.10.14.
// Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSInteger)countNSStringElements{
    
    NSInteger amt = 0;
    
    for (int i=0; i<[self count]; i++){
        
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){amt++;}
        
    }
    
    return amt;
    
}

- (NSString *)concatAllStringsInArray{
    
    NSString *str=@"";
    for (int i=0; i<[self count]; i++){
        
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
           str = [str stringByAppendingString: [self objectAtIndex:i]];
        }
    }
   return str;
    }

- (NSNumber *)maxNumberInArray{
    NSNumber *max = [NSNumber numberWithFloat:-MAXFLOAT];
    for (NSNumber *x in self) {
        if ([x floatValue] > [max floatValue]) max = x;
    }
    return max;
        
}



- (NSArray *)substractArray:(NSArray *)arr{
    NSMutableArray *outArr = [[NSMutableArray alloc]init];
    for(int i=0; i<[self count]; i++){
        if (![arr containsObject:[self objectAtIndex:i]]){
         [outArr addObject:[self objectAtIndex:i]];
            
        }
        
    }return outArr;

}



+(NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    if(fromVal < toValue){
        
        for(NSInteger i=fromVal; i<=toValue; i++){
            [arr addObject:[NSNumber numberWithLong:i]];
        }
    
    }else{
        for(NSInteger i=fromVal; i>=toValue; i--){
            [arr addObject:[NSNumber numberWithLong:i]];
        }
    }
    return arr;
 
}


+(NSArray *)charactersInString:(NSString *)str{
     NSMutableArray *arr = [[NSMutableArray alloc]init];
    for(int i=0; i<str.length; i++){
    [arr addObject:[str substringWithRange:NSMakeRange(i, 1)]];
    }
    return arr;
   
}

@end