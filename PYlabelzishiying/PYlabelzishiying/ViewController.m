//
//  ViewController.m
//  PYlabelzishiying
//
//  Created by Apple on 16/8/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "IQKeyboardManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField_1;
@property (weak, nonatomic) IBOutlet UITextField *textField_2;
@property (weak, nonatomic) IBOutlet UITextField *textField_3;
@property (weak, nonatomic) IBOutlet UITextField *textField_4;
@property (weak, nonatomic) IBOutlet UITextField *textField_5;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
}
#pragma mark = 点击空白收回键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

#pragma mark = 滑动收回键盘
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}

#pragma mark = 手势收回键盘
//- (void)viewDidLoad
//{
//    self.view.userInteractionEnabled = YES;
//    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(fingerTapped:)];
//    [self.view addGestureRecognizer:singleTap];
//    
//}
//- (void)fingerTapped:(UITapGestureRecognizer *)gestureRecognizer
//{
//    [self.view endEditing:YES];
//}

#pragma mark = 需要实现UITextFieldDelegate协议中的方法
//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [textField resignFirstResponder];
//    return YES;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
