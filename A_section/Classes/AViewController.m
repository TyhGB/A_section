//
//  AViewController.m
//  MainProject
//
//  Created by TyhOS on 2019/7/18.
//  Copyright © 2019 上海佰量网络科技. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"A推B" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)pushVC
{
    UIViewController *vc = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello world"];
    [self.navigationController pushViewController:vc animated:YES];
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
