//
//  FirstViewController.h
//  APP-One
//
//  Created by  on 17/2/14.
//  Copyright © 2017年 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UILabel *paramLable;
//跳转应用没有指定界面、没有参数
@property (weak, nonatomic) IBOutlet UIButton *noInterfaceAndNoParamClick;
//跳转应用没有指定界面、有参数
@property (weak, nonatomic) IBOutlet UIButton *noInterfaceAndSomeParamClick;
//跳转应用指定界面、没有参数
@property (weak, nonatomic) IBOutlet UIButton *InterfaceAndNoParamClick;
//跳转应用指定界面、有参数
@property (weak, nonatomic) IBOutlet UIButton *InterfaceAndSomeParamClick;
@end
