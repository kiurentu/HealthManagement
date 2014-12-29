//
//  DetailViewController.m
//  DoctorAndE
//
//  Created by Krt on 14/12/19.
//  Copyright (c) 2014年 skytoup. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.leftBarButtonItem=[Tools createDefaultClickBackBtnWithTitle:@"健康档案" withViewController:self];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 *  使界面适配不同尺寸屏幕
 */
-(void)viewDidLayoutSubviews
{
    CGRect  rect = [[UIScreen mainScreen] bounds];
    CGSize  size = rect.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    NSLog(@"print %f,%f", width, height);
    if (height==480) {
          self.scrollV.contentSize = CGSizeMake(0,height+175);
    }else{
         self.scrollV.contentSize = CGSizeMake(0,height);
    }
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
