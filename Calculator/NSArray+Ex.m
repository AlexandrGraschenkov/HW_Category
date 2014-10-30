//
//  NSArray+Ex.m
//  Calculator
//
//  Created by Alexander on 24.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

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
    
    NSString *s = @"";
    
    for (int i=0; i < [self count]; i++) {
                if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
                        s = [s stringByAppendingString:[self objectAtIndex:i]];
                    }
            }
        return s;
    }


- (NSNumber *)maxNumberInArray{
    
    if(self.count == 0){
        return nil;
    }
    
    NSNumber *max = [self objectAtIndex:0];
    
    for (NSNumber *val in self) {
    
        if ([val floatValue] > [max floatValue]) max = val;
        }
    return max;
    }

- (NSArray *)substractArray:(NSArray *)arr{
    
        NSMutableArray *ss=[[NSMutableArray
                             alloc]init];
        for (int i = 0; i < [self count]; i++) {
                if (![arr containsObject:[self objectAtIndex:i]]) {
                    [ss addObject:[self objectAtIndex:i]];
                }
            }
    
        return ss;
    }



 +(NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
     
     NSInteger begin = toValue;
     NSMutableArray *ss = [[NSMutableArray alloc]init];
     
     if (fromVal < toValue) {
         for(NSInteger i = fromVal; i <= toValue; i++)
         {
             [ss addObject: [NSNumber numberWithLong: i]];
         }
         
     } else {
         for(NSInteger i = fromVal; i >= toValue; i--)
         {
             [ss addObject: [NSNumber numberWithLong: i]];
         }
         
     }
     
     
     
     return ss;
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





@end


