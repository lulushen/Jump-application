//
//  FirstViewController.m
//  APP-One
//
//  Created by  on 17/2/14.
//  Copyright © 2017年 . All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
//跳转应用没有指定界面、没有参数


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//跳转应用没有指定界面、没有参数
- (IBAction)noInterfaceAndNoParamClick:(UIButton *)sender {
    
    
    NSURL *appTwoUrl = [NSURL URLWithString:@"APPTwo://"];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appTwoUrl]) {
        // 3. 打开应用程序App-Two
        [[UIApplication sharedApplication] openURL:appTwoUrl];
    } else {
        NSLog(@"没有安装");
    }

}
//跳转应用没有指定界面、有参数
- (IBAction)noInterfaceAndSomeParamClick:(UIButton *)sender {
   
    NSString *paramStr = [NSString stringWithFormat:@"APPTwo://username=%@&password=%@", @"test", @"1234"];
    
    NSURL *appTwoUrl = [NSURL URLWithString:[paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appTwoUrl]) {
        // 3. 打开应用程序App-Two
        [[UIApplication sharedApplication] openURL:appTwoUrl];
    } else {
        NSLog(@"没有安装");
    }
}
//跳转应用指定界面、没有参数
- (IBAction)InterfaceAndNoParamClick:(UIButton *)sender {
    //”secendToSecend“界面标示
    NSURL *appTwoUrl = [NSURL URLWithString:@"APPTwo://secendToSecend"];
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appTwoUrl]) {
        // 3. 打开应用程序App-Two
        [[UIApplication sharedApplication] openURL:appTwoUrl];
    } else {
        NSLog(@"没有安装");
    }
}
//跳转应用指定界面、有参数
- (IBAction)InterfaceAndSomeParamClick:(UIButton *)sender {
    NSString *paramStr = [NSString stringWithFormat:@"APPTwo://secendToSecend?username=%@&password=%@", @"test", @"1234"];
    NSURL *appTwoUrl = [NSURL URLWithString:[paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    // 2.判断手机中是否安装了对应程序
    if ([[UIApplication sharedApplication] canOpenURL:appTwoUrl]) {
        // 3. 打开应用程序App-Two
        [[UIApplication sharedApplication] openURL:appTwoUrl];
    } else {
        NSLog(@"没有安装");
    }
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
