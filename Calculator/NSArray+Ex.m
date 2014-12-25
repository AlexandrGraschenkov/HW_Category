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
        for(NSString *string in self)
        {
            if([string isKindofClass: [NSString class]])
            {
                count++;
            }
        }
        return count;
    }

- (NSString *)concatAllStringsInArray{
        NSMutableString *s = [NSMutableString new]
      for (NSString *string in self) {
                if([string isKindOfClass: [NSString class]]){
                        s = [s stringByAppendingString:string];
                    }
            }
        return s;
    }


- (NSNumber *)maxNumberInArray{
    
    if(self.count == 0){
        return nil;
    }
    
    NSNumber *max = [self objectAtIndex:0];
    
    for (NSNumber *value in self) {
    
        if ([value floatValue] > [max floatValue]){
        max = value;
        }
      }
    return max;
    }

- (NSArray *)substractArray:(NSArray *)arr{
    
        NSMutableArray *array=[[NSMutableArray alloc]init];
        for (id object in self) {
                if (![arr containsObject:object]) {
                    [array addObject:object];
                }
            }
    
        return array;
    }



 +(NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
     
      NSMutableArray *array = [[NSMutableArray alloc]init];
     
     if (fromVal < toValue) {
         for(NSInteger i = fromVal; i <= toValue; i++)
         {
             [array addObject: [[NSNumber alloc] initWithLong: i];
         }
         
     } else {
         for(NSInteger i = fromVal; i >= toValue; i--)
         {
             [array addObject: [[NSNumber alloc] initWithLong: i];
         }
         
     }
     
     
     
     return array;
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
