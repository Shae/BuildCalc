//
//  ViewController.m
//  BuildCalc
//
//  Created by Shae Klusman on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize cost;
@synthesize income;
@synthesize Outcome1;
@synthesize cost2;
@synthesize numbers;
@synthesize income2;
@synthesize Outcome2;

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 10;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [numbers count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [numbers objectAtIndex:row];
}

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

numbers = [[NSArray alloc]
           initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6" @"7", @"8", @"9", nil];
}

- (void)viewDidUnload
{
    [self setCost:nil];
    [self setIncome:nil];
    [self setOutcome1:nil];
    [self setCost2:nil];
    [self setIncome2:nil];
    [self setOutcome2:nil];
    [self setCost2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}



- (IBAction)runButton:(id)sender {

    float firstSum = [[cost text] floatValue] / [[income text] floatValue];
    
    NSNumberFormatter * fmt;
    NSNumber          * n;
    fmt = [ [ NSNumberFormatter alloc ] init ];
    n   = [ NSNumber numberWithFloat: firstSum ];
    [ fmt setFormatterBehavior: NSNumberFormatterBehavior10_4 ];
    [ fmt setCurrencySymbol: @"$" ];
    [ fmt setNumberStyle: NSNumberFormatterCurrencyStyle ];
    Outcome1.text = [NSString stringWithFormat: @"Initial cost of %@ per $ of hourly income", [ fmt stringFromNumber: n ]];
    [cost resignFirstResponder];
    [income resignFirstResponder];
    
 
    
}

- (IBAction)run2Button:(id)sender {
    
    float secondSum = [[cost2 text] floatValue] / [[income2 text] floatValue];
    
    NSNumberFormatter *fmt2;
    NSNumber          *n2;
    
    fmt2 = [ [ NSNumberFormatter alloc ] init ];
    n2   = [ NSNumber numberWithFloat: secondSum ];
    [ fmt2 setFormatterBehavior: NSNumberFormatterBehavior10_4 ];
    [ fmt2 setCurrencySymbol: @"$" ];
    [ fmt2 setNumberStyle: NSNumberFormatterCurrencyStyle ];
    Outcome2.text = [NSString stringWithFormat: @"Initial cost of %@ per $ of hourly income", [ fmt2 stringFromNumber: n2 ]];
    [cost2 resignFirstResponder];
    [income2 resignFirstResponder];
}

- (IBAction)DismissKeyboard:(id)sender {
    [cost resignFirstResponder];
    [income resignFirstResponder];
    [cost2 resignFirstResponder];
    [income2 resignFirstResponder];
    
}
@end
