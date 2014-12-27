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
    
    NSString *str = @"";
    
    for (int i=0; i < [self count]; i++) {
        if([[self objectAtIndex:i] isKindOfClass:[NSString class]]){
            str = [str stringByAppendingString:[self objectAtIndex:i]];
        }
    }
    return str;
}


- (NSNumber *)maxNumberInArray{
    
    if(self.count == 0){
        return nil;
    }
    
    NSNumber *max = [self objectAtIndex:0];
    
    for (NSNumber *temp in self) {
        
        if ([temp floatValue] > [max floatValue]) max = temp;
    }
    return max;
}


-(NSArray *)substractArray:(NSArray *)arr{
    
    NSMutableArray *ss=[[NSMutableArray
                         alloc]init];
    int count = 0;
      for (int i = 0; i < [self count]; i++) {
            for (int j = 0; j < [arr count]; j++) {
                if([self objectAtIndex:i] == [arr objectAtIndex:j]) {
                    count++;
                        }
                    }
          if (count == 0){
          [ss addObject:[self objectAtIndex:i]];
          }
          count = 0;
      }
     return ss;
}


+(NSArray *)numbersFrom:(NSInteger)fromVal toValue:(NSInteger)toValue{
    
    NSMutableArray *ss = [[NSMutableArray alloc]init];
    
    if (fromVal < toValue) {
        for(NSInteger i = fromVal; i <= toValue; i++)
        {
            [ss addObject: [NSNumber numberWithLong: i]];
        }
        
    }
    if (fromVal > toValue) {
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
