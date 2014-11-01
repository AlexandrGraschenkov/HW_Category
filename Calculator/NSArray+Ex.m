//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

-(NSInteger)countNSStringElements{
        NSInteger count = 0;
        for(int i = 0; i < [self count]; i++)
        {
            if([[self objectAtIndex:i] isKindOfClass:[NSString class]])
            {
                count++;
            }
        }
        return count;
    }

- (NSString *)concatAllStringsInArray{
    
    NSString *word = @"";
    
    for (int i=0; i < [self count]; i++) {
                if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
                        word = [word stringByAppendingString:[self objectAtIndex:i]];
                    }
            }
        return word;
    }


- (NSNumber *)maxNumberInArray{
    
    if(self.count == 0){
        return nil;
    }
    
    NSNumber *maxInt = [self objectAtIndex:0];
    
    for (NSNumber *value in self) {
        maxInt = [value floatValue] > [maxInt floatValue] ? value:maxInt;
        }
    return maxInt;
    }

- (NSArray *)substractArray:(NSArray *)arr{
    
        NSMutableArray *mass=[[NSMutableArray alloc]init];
        for (int i = 0; i < [self count]; i++) {
                if (![arr containsObject:[self objectAtIndex:i]]) {
                    [mass addObject:[self objectAtIndex:i]];
                }
            }
    
        return mass;
    }



 +(NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
     NSMutableArray *mass = [[NSMutableArray alloc]init];
     if (fromVal < toValue) {
         for(NSInteger i = fromVal; i <= toValue; i++)
         {
             [mass addObject: [NSNumber numberWithLong: i]];
         }
         
     } else {
         for(NSInteger i = fromVal; i >= toValue; i--)
         {
             [mass addObject: [NSNumber numberWithLong: i]];
         }
     }
     return mass;
}

+(NSArray *)charactersInString:(NSString *)str
{
    NSMutableArray *mutableResult = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < [str length]; i++)
       {
           [mutableResult addObject: [str substringWithRange:NSMakeRange(i, 1)]];
       }
    
    return mutableResult;
    
}

@end
