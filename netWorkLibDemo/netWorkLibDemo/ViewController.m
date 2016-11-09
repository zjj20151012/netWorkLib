//
//  ViewController.m
//  netWorkLibDemo
//
//  Created by 朱佳杰 on 2016/11/9.
//  Copyright © 2016年 zjj. All rights reserved.
//

#import "ViewController.h"
#import "zjjHttpTool.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self req];
    });
    
    
}

#pragma mark -req
//当shouldAddContentType为真时必须要设置cntentType否则会报错
- (void)req{
    zjjHttpTool *tool = [[zjjHttpTool alloc]init];
    //设置contentType
    tool.shouldAddContentType = YES;
    //根据服务器需要进行设置
    tool.contentType = @"text/html";
    NSString *urlStr = [@"http://fish.zjit.org/fishPond/" stringByAppendingString:@"equipment/equipmentBrief.php"];
    NSDictionary *param = @{
                            @"userId":@"1",
                            };
    [tool getWithUrlshowHUD:urlStr
                     params:param
                    hudInfo:@"加载中..."
                    success:^(id responceObj) {
                        NSLog(@"%@",responceObj);
                        NSLog(@"success");
                    }
                    failure:^(id fail) {
                        NSLog(@"%@",fail);
                        NSLog(@"fail");
                    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
