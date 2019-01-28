//
//  ViewController.m
//  SDK
//
//  Created by 朱帅 on 2017/4/17.
//  Copyright © 2017年 朱帅. All rights reserved.
//

#import "ViewController.h"
#import "SLNeoRecognizer.h"

@interface ViewController() <SLNeoRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[SLNeoRecognizer sharedInstance] initWithAppId:@"appId" appKey:@"appSecret"];
    [SLNeoRecognizer sharedInstance].delegate = self;
    [[SLNeoRecognizer sharedInstance] enable];
}

#pragma mark SLNeoRecognizerDelegate
- (void)recognizer:(SLNeoRecognizer *)recognizer code:(NSString *)code
{
    NSLog(@"code = %@", code);
    
    NSString *token = [[SLNeoRecognizer sharedInstance] getTokenWithCode:code];
    NSLog(@"token = %@", token); // 有效时间5分钟。
}

@end
