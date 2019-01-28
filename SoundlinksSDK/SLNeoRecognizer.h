//
//  SLNeoRecognizer.h
//  Spy
//
//  Created by wyudong on 2018/1/18.
//  Copyright © 2018年 Soundlinks. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SLNeoRecognizer;

@protocol SLNeoRecognizerDelegate <NSObject>

@required
- (void)recognizer:(SLNeoRecognizer *)recognizer code:(NSString *)code;

@end

@interface SLNeoRecognizer : NSObject

- (void)initWithAppId:(NSString * )appId appKey:(NSString *)appKey;
+ (instancetype)sharedInstance;

@property (nonatomic, weak) id<SLNeoRecognizerDelegate> delegate;

// Recognize
- (void)enable;
- (void)disable;

// Token
- (NSString *)getTokenWithCode:(NSString *)code;

@end
