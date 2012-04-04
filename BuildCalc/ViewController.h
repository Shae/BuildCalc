//
//  ViewController.h
//  BuildCalc
//
//  Created by Shae Klusman on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource >
@property (weak, nonatomic) IBOutlet UITextField *cost;
@property (weak, nonatomic) IBOutlet UITextField *income;
@property (weak, nonatomic) IBOutlet UILabel *Outcome1;
@property (weak, nonatomic) IBOutlet UITextField *cost2;

@property (weak, nonatomic) IBOutlet UITextField *income2;
@property (weak, nonatomic) IBOutlet UILabel *Outcome2;
@property (strong, nonatomic) NSArray *numbers;

- (IBAction)run2Button:(id)sender;

- (IBAction)DismissKeyboard:(id)sender;

- (IBAction)runButton:(id)sender;

@end
