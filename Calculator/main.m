//
//  main.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "NSArray+Ex.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        //NSArray *arr = [[NSArray alloc] initWithObjects:@1, @2, @"4", @"5", nil];
        NSArray *arr2 = [[NSArray alloc] init];
        arr2 = [NSArray numbersFrom:10 toValue:8];
        for (NSNumber *obj in arr2) {
            NSLog(@"%@ ", obj);
        }
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
