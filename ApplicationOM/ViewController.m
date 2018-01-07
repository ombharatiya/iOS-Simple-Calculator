//
//  ViewController.m
//  ApplicationOM
//
//  Created by Glbitm on 8/2/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize text1, text2, textResult, textOperator, doneBtn;
- (void)viewDidLoad {
    [super viewDidLoad];
    [doneBtn addTarget:self action:@selector(butonResponse:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)butonResponse:(id)sender{
    NSString *str1 = text1.text;
    NSString *str2 = text2.text;
    NSString *op = textOperator.text;
    const char *opChar = [op cStringUsingEncoding:[NSString defaultCStringEncoding]];
    float fStr1 = [str1 floatValue];
    float fStr2 = [str2 floatValue];
    
    textResult.text = text1.text;
//    NSLog(@"%s", opChar);
    
    switch (opChar[0]) {
        case '+':
//            NSLog(@"%.3f",fStr1+fStr2);
            textResult.text = [NSString stringWithFormat:@"%.2f", fStr1+fStr2];
            break;
        case '-':
            textResult.text = [NSString stringWithFormat:@"%.2f", fStr1-fStr2];
            break;
        case '*':
            textResult.text = [NSString stringWithFormat:@"%.2f", fStr1*fStr2];
            break;
        case '/':
            textResult.text = [NSString stringWithFormat:@"%.2f", fStr1/fStr2];
            break;
        default:
            NSLog(@"Wrong Input");
            break;
    }
}

@end
