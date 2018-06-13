//
//  ViewController.m
//  ZXConvenientCode
//
//  Created by forzqy on 2018/6/13.
//  Copyright © 2018 forzqy. All rights reserved.
//

#import "ViewController.h"
#import "ZXSugarCode.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Person *p1 = [Person modelWithDic:@{@"name": @"jim"}];
    NSLog(@"%@", p1);w
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
