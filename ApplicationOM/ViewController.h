//
//  ViewController.h
//  ApplicationOM
//
//  Created by Glbitm on 8/2/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text1;

@property (weak, nonatomic) IBOutlet UITextField *text2;

@property (weak, nonatomic) IBOutlet UITextField *textOperator;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;
@property (weak, nonatomic) IBOutlet UITextView *textResult;

@end

