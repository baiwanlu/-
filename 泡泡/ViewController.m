//
//  ViewController.m
//  泡泡
//
//  Created by 道标朱 on 16/11/8.
//  Copyright © 2016年 道标朱. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    CGRect frame = CGRectMake(100, 100, 100, 150);
    
    UIImageView *imageV= [[UIImageView alloc]initWithFrame:frame];
    imageV.backgroundColor = [UIColor redColor];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = imageV.bounds;
    layer.contents = (id)[UIImage imageNamed:@"456.png"].CGImage;
    layer.contentsCenter = CGRectMake(0.5, 0.5, 0.1, 0.1);
    layer.contentsScale = [UIScreen mainScreen].scale;
    
    imageV.layer.mask = layer;
    imageV.layer.frame = imageV.frame;
    imageV.image = [UIImage imageNamed:@"心动指数-心灰意冷.jpg"];
    [self.view addSubview:imageV];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
