
//
//  CHViewController1.m
//  Masonry布局的基本使用
//
//  Created by 陈楠 on 17/2/22.
//  Copyright © 2017年 i-mk_chenhong. All rights reserved.
// 

#import "CHViewController1.h"

@interface CHViewController1 ()

@end

@implementation CHViewController1
- (void)viewWillAppear:(BOOL)animated{
    self.view.backgroundColor = [UIColor yellowColor];
    self.view.alpha = 0.5;
}
- (void)viewWillLayoutSubviews{
    self.view.backgroundColor = [UIColor yellowColor];
    self.view.alpha = 0.5;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.view.alpha = 0.5;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"取消" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(20, 80, 70, 30);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(dimissView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)dimissView{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
