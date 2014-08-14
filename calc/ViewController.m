//
//  ViewController.m
//  calc
//
//  Created by DetroitLabsUser on 3/3/14.
//  Copyright (c) 2014 DetroitLabsUser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UILabel * resultLabel;
// resultLabel is what we named the label
@property (nonatomic, strong) IBOutlet UITextField * numberField1;
@property (nonatomic, strong) IBOutlet UITextField * numberField2;

@end

@implementation ViewController
#pragma mark - Calculator Methods



- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:
(NSRange)range replacementString:(NSString *)string {
    NSCharacterSet *numberCharSet = [[NSCharacterSet characterSetWithCharactersInString:@"1234567890.-"] invertedSet];
    NSString *filteredString = [[string componentsSeparatedByCharactersInSet:
                                 numberCharSet] componentsJoinedByString:@""];
    return [string isEqualToString:filteredString];
    
    //this means that if the user puts in any character OTHER THAN 1234etc, the program will enter "", meaning it won't input that character
}


-(IBAction)plusTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 + num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];

}
-(IBAction)minusTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 - num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)timesTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 * num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)divideTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 / num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)remainTapped:(id)sender {
    int num1 = [_numberField1.text floatValue];
    int num2 = [_numberField2.text floatValue];
    int result = num1 % num2;
    _resultLabel.text = [NSString stringWithFormat:@"%i", result];
    
}
-(IBAction)Add1Tapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float result = num1 ++;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)Minus1Tapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float result = num1 --;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)AddItselfTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 += num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)minusItselfTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 -= num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)timesItselfTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 *= num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];
}
-(IBAction)divideItselfTapped:(id)sender {
    float num1 = [_numberField1.text floatValue];
    float num2 = [_numberField2.text floatValue];
    float result = num1 /= num2;
    _resultLabel.text = [NSString stringWithFormat:@"%f", result];

}
-(IBAction)RemainItselfTapped:(id)sender {
    int num1 = [_numberField1.text floatValue];
    int num2 = [_numberField2.text floatValue];
    int result = num1 %= num2;
    _resultLabel.text = [NSString stringWithFormat:@"%i", result];
     
                         }
#pragma mark - System Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel*questionLabel=[[UILabel alloc] init];
    questionLabel.text=@"Who's on first?";
    questionLabel.textColor=[UIColor greenColor];
    questionLabel.frame=CGRectMake(180.0, 40.0, 120.0, 25.0);
    [self.view addSubview:questionLabel];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

-(void)ResultDidChange {
    NSLog(@"Result Changed");
    if ([_resultLabel.text floatValue] <0) {
        _resultLabel.textColor=[UIColor redColor];
    }else{
        _resultLabel.textColor=[UIColor blackColor];
    }
}


@end
