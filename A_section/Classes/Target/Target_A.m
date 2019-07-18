//
//  Target_A.m
//  A_section
//
//  Created by TyhOS on 2019/7/18.
//  Copyright © 2019 上海佰量网络科技. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"
@implementation Target_A
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}
@end
