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
        NSArray *arr = [[NSArray alloc] initWithObjects:@"1", @"2", @4, @"3", nil];
        //NSInteger i = [arr countNSStringElements];
        NSString *str = [arr concatAllStringsInArray];
        NSLog(@"%@", str);
        //NSLog(@"%d", i);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
