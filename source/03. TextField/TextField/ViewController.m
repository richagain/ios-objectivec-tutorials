//
//  ViewController.m
//  TextField
//
//  Created by UBM on 17/4/18.
//  Copyright © 2018 MIMS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // The custom method to create our textfield is called
    [self addTextField:(NSInteger)1 :(CGFloat)20 :(CGFloat)50 :(CGFloat)280 :(CGFloat)30];
    [self addTextField:(NSInteger)2 :(CGFloat)20 :(CGFloat)100 :(CGFloat)280 :(CGFloat)30];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addTextField
    :(NSInteger)tag 
    :(CGFloat)x 
    :(CGFloat)y 
    :(CGFloat)width 
    :(CGFloat)height {
    // This allocates a label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
        
    // This sets the label text
    label.text=@"## ";
    
    // This sets the font for the label
    [label setFont:[UIFont boldSystemFontOfSize:14]];
    
    // This fits the frame to size of the text
    [label sizeToFit];
    
    // This allocates the textfield and sets its frame
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(x, y, width, height)];
    
    // This sets the textfield tag id
    [textField setTag:tag];
    
    // This sets the border style of the text field
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [textField setFont:[UIFont boldSystemFontOfSize:12]];
    
    // Placeholder text is displayed when no text is typed
    textField.placeholder = @"Simple Text field";
    
    // Prefix label is set as left view and the text starts after that
    textField.leftView = label;
    
    // It set when the left prefixLabel to be displayed
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    // Adds the textField to the view.
    [self.view addSubview:textField];
    
    // sets the delegate to the current class
    textField.delegate = self;
}

// pragma mark is used for easy access of code in Xcode
#pragma mark - TextField Delegates

// This method is called once we click inside the textField
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    int tag = (int)textField.tag;
    NSString *log = [NSString stringWithFormat:@"Text field %1d begined editing", tag];
    NSLog(@"%@", log);    
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField{
NSLog(@"Text field ended editing");
}

// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)viewDidUnload{
    [super viewDidUnload];
}
@end
