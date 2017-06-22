//
//  ViewController.m
//  SoundlinksSDKExample
//
//  Created by wyudong on 2017/6/22.
//  Copyright © 2017年 Soundlinks. All rights reserved.
//

#import "ViewController.h"
#import "SLRecognizer.h"

@interface ViewController () <SLRecognizerDelegate>

@property (nonatomic, strong) SLRecognizer *recognizer;

@end

@implementation ViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.recognizer = [SLRecognizer recognizerWithDelegate:self];
    [self.recognizer enable];
}

- (void)recognizer:(SLRecognizer *)recognizer content:(NSDictionary *)content
{
    NSLog(@"🕹Received Soundlinks: %@", content);
}

@end
