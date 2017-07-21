//
//  SLRecognizer.h
//
//  Created by wyudong on 2016/12/11.
//  Copyright © 2016年 Soundlinks. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    SLRecognizerActivityStatusNone,
    SLRecognizerActivityStatusStandBy,
    SLRecognizerActivityStatusTargeting,
    SLRecognizerActivityStatusExceeded,
} SLRecognizerActivityStatus;

typedef enum : NSUInteger {
    SLRecognizerModeDebug,
    SLRecognizerModeProduction
} SLRecognizerMode;

@class SLRecognizer;

@protocol SLRecognizerDelegate <NSObject>

@required
- (void)recognizer:(SLRecognizer *)recognizer content:(NSDictionary *)content;

@optional
- (void)recognizer:(SLRecognizer *)recognizer updateActivityStatus:(SLRecognizerActivityStatus)status;
- (void)recognizer:(SLRecognizer *)recognizer updateRecordingMessage:(NSString *)message;

@end

@interface SLRecognizer : NSObject 

@property (nonatomic, weak) id<SLRecognizerDelegate> delegate;

// Initialize
- (instancetype)initWithRecognizerDelegate:(id<SLRecognizerDelegate>)delegate;
+ (SLRecognizer *)recognizerWithDelegate:(id<SLRecognizerDelegate>)delegate;

// Recognize
- (void)enable;
- (void)disable;

@end

 



