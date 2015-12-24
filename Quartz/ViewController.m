//
//  ViewController.m
//  Quartz
//
//  Created by 李金柱 on 15/10/27.
//  Copyright (c) 2015年 MR.Li. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
#import "DashedLine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DashedLine *dashedLine = [[DashedLine alloc]initWithFrame:CGRectMake(40, 500, 300, 20)];
    [self.view addSubview:dashedLine];
    [self initView];
}
- (void)initView{
    DrawView *drawView = [[DrawView alloc]initWithFrame:CGRectMake(0, 20, 375, 400)];
    drawView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:drawView];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
