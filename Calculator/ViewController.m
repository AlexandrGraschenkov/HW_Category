//
//  ViewController.m
//  Calculator
//
//  Created by Alexander on 27.02.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Ex.h"

@interface ViewController ()
{
    UIPopoverController *popover;
}
@property (nonatomic, weak) IBOutlet UILabel *lab;
@property (nonatomic, weak) IBOutlet UIImageView *imgView;
@property (nonatomic, weak) IBOutlet UIButton *shareButton;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.shareButton.hidden = YES;
    
    if([self isAllMethodsAreImplemented]){
        int countNotPassingTests = [self countNotPassingTests];
        if(countNotPassingTests == 0){
            NSArray *successTextArr = @[@"Молодец!", @"Ты справился!", @"Тесты прошли успешно"];
            self.lab.text = successTextArr[arc4random() % successTextArr.count];
            self.imgView.image = [UIImage imageNamed:@"SuccessHUD"];
            self.shareButton.hidden = NO;
        } else {
            self.lab.text = [NSString stringWithFormat:@"К сожалению %d функции работают неправильно", countNotPassingTests];
            self.imgView.image = [UIImage imageNamed:@"ErrorHUD"];
        }
    } else {
        self.lab.text = @"Не все методы реализованы";
        self.imgView.image = [UIImage imageNamed:@"ErrorHUD"];
    }
    
}

- (int)countNotPassingTests
{
    BOOL countStringsWorks = YES;
    countStringsWorks &= @[@2, @"das", @"", @141].countNSStringElements == 2;
    countStringsWorks &= @[@"", [NSMutableString new], @"", [UIButton new]].countNSStringElements == 3;
    
    
    BOOL concatStringsWorks = YES;
    concatStringsWorks &= [@[@2, @"das", @"", @141].concatAllStringsInArray isEqualToString:@"das"];
    countStringsWorks &= [@[@"12", [NSMutableString new], @"34", [UIButton new]].concatAllStringsInArray isEqualToString:@"1234"];
    
    BOOL maxWorks = YES;
    maxWorks &= [@[@2, @100, @-10].maxNumberInArray isEqual:@100];
    maxWorks &= [@[@25.2, @25.4, @-10].maxNumberInArray isEqual:@25.4];
    
    BOOL substructWorks = YES;
    substructWorks &= [[@[@2, [NSNull null], @"!23"] substractArray:@[[NSNull null], @2]] isEqual:@[@"!23"]];
    substructWorks &= [[@[@23, [NSNull null], @"!23"] substractArray:@[[NSNull null], @2]] isEqual:@[@23, @"!23"]];
    
    BOOL fromToWorks = YES;
    fromToWorks &= [[NSArray numbersFrom:2 toValue:10] isEqual:@[@2, @3, @4, @5, @6, @7, @8, @9, @10]];
    fromToWorks &= [[NSArray numbersFrom:2 toValue:-2] isEqual:@[@2, @1, @0, @-1, @-2]];
    
    BOOL characterInStringWorks = YES;
    characterInStringWorks &= [[NSArray charactersInString:@"123"] isEqual:@[@"1", @"2", @"3"]];
    characterInStringWorks &= [[NSArray charactersInString:@"∆∂œ∑"] isEqual:@[@"∆", @"∂", @"œ", @"∑"]];
    
    return !countStringsWorks + !countStringsWorks + !maxWorks + !substructWorks + !fromToWorks + !characterInStringWorks;
}

- (BOOL)isAllMethodsAreImplemented
{
    NSArray *arr = [[NSArray alloc] init];
    BOOL result = YES;
    result &= [arr respondsToSelector:@selector(countNSStringElements)];
    result &= [arr respondsToSelector:@selector(concatAllStringsInArray)];
    result &= [arr respondsToSelector:@selector(maxNumberInArray)];
    result &= [arr respondsToSelector:@selector(substractArray:)];
    result &= [NSArray respondsToSelector:@selector(numbersFrom:toValue:)];
    result &= [NSArray respondsToSelector:@selector(charactersInString:)];
    return result;
}

- (IBAction)sharePressed:(UIButton *)sender
{
    UIImage *img = [UIImage imageNamed:@"SuccessHUD"];
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:@[img, @"Я сделал вторую домашку!\nА чего добился ты?"] applicationActivities:nil];
    activityController.completionHandler = ^(NSString *activityType, BOOL completed){
        NSLog(@"%@ %d", activityType, completed);
    };
    
    popover = [[UIPopoverController alloc] initWithContentViewController:activityController];
    [popover presentPopoverFromRect:sender.bounds inView:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

@end
