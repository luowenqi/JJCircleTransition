//
//  JJViewController.m
//  TestDemo
//
//  Created by 罗文琦 on 2017/5/15.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "JJViewController.h"
#import "JJCircleTransition.h"

@interface JJViewController ()

@property(nonatomic , strong) JJCircleTransition *  circleTransition;
@end

@implementation JJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



-(void)awakeFromNib{
    [super awakeFromNib];
    //设置转场的样式为自定义
    self.modalPresentationStyle = UIModalPresentationCustom;
    ///维护一个圆形转场的属性,并且进行初始化(参数1:圆心位置 参数2:初始圆半径);
    _circleTransition = [[JJCircleTransition alloc]initWithArcCenter:CGPointMake([UIScreen mainScreen].bounds.size.width - 30, 30) cornerRadius:15];
    self.transitioningDelegate = _circleTransition;
}




-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
