//
//  CCViewController.m
//  CCLibTest
//
//  Created by wangsen on 01/08/2019.
//  Copyright (c) 2019 wangsen. All rights reserved.
//

#import "CCViewController.h"
#import "CCTest.h"
#import "CCTestController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [CCTest thirdTest];
    [CCTest version2dot0dot1];
    CCTestController * vc = [[CCTestController alloc] init];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self presentViewController:vc animated:YES completion:nil];
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
