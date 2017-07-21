# Soundlinks-iOS-SDK

## Installation

```
pod 'Soundlinks-iOS-SDK', '~> 1.1.0'
```

## Usage

In a ViewController for recognizing Soundlinks, start like this:

```objc
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
    NSLog(@"Received Soundlinks: %@", content);
}

@end
```

To stop the recognizer:

```objc
[self.recognizer disable];
```

## Feedback

[Create a issue](https://github.com/soundlinks/Soundlinks-iOS-SDK/issues/new) and we are here to help.
