//
//  ViewController.m
//  KOLableFrameworkDemo
//
//  Created by uyi on 2017/3/17.
//  Copyright © 2017年 GCHShoppingGuide. All rights reserved.
//

#import "ViewController.h"
#import "CopyLableLib.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CopyLableLib *copyLable = [[CopyLableLib alloc]init];
    [copyLable setTextAlignmentVertical:TextAlignmentVerticalTop];
    [self.view addSubview:copyLable];
    copyLable.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 160, [UIScreen mainScreen].bounds.size.width, 160);
    copyLable.backgroundColor = [UIColor colorWithRed:0xf1/255.0 green:0xf1/255.0 blue:0xf1/255.0 alpha:1.0];
    [copyLable setTextAlignment:NSTextAlignmentLeft];
    copyLable.text = @"长按我可以复制的哦。。";
    copyLable.numberOfLines = 0;
    copyLable.userInteractionEnabled = YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
