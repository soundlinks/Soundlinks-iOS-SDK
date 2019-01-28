//
//  ViewController.m
//  SDK
//
//  Created by 朱帅 on 2017/4/17.
//  Copyright © 2017年 朱帅. All rights reserved.
//

#import "ViewController.h"
#import "SLRecognizer.h"

@interface ViewController() <SLRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[SLRecognizer sharedInstance] initWithAppId:@"appId" appSecret:@"appSecret"];
    [SLRecognizer sharedInstance].delegate = self;
    [[SLRecognizer sharedInstance] enable];
}

#pragma mark SLRecognizerDelegate
- (void)recognizer:(SLRecognizer *)recognizer code:(NSString *)code
{
    NSLog(@"code = %@", code);
    
    NSString *token = [[SLRecognizer sharedInstance] getTokenWithCode:code];
    NSLog(@"token = %@", token); // 有效时间5分钟。
}

@end
