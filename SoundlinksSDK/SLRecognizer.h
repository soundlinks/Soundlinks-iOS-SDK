//
//  SLRecognizer.h
//  Spy
//
//  Created by wyudong on 2018/1/18.
//  Copyright © 2018年 Soundlinks. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SLRecognizer;

@protocol SLRecognizerDelegate <NSObject>

@required
- (void)recognizer:(SLRecognizer *)recognizer code:(NSString *)code;

@end

@interface SLRecognizer : NSObject

- (void)initWithAppId:(NSString * )appId appSecret:(NSString *)appSecret;
+ (instancetype)sharedInstance;

@property (nonatomic, weak) id<SLRecognizerDelegate> delegate;

// Recognize
- (void)enable;
- (void)disable;

// Token
- (NSString *)getTokenWithCode:(NSString *)code;

@end
