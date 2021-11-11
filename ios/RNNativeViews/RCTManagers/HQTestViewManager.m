//
//  HQTestViewManager.m
//  HQProject
//
//  Created by 张鸿炜 on 2021/11/11.
//

#import "HQTestViewManager.h"
#import "HQTestView.h"
#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import <React/RCTLog.h>
#import "Perfix.h"



@implementation HQTestViewManager


RCT_EXPORT_MODULE(RNTTestView)


RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL);

RCT_EXPORT_VIEW_PROPERTY(title, NSString);

RCT_EXPORT_VIEW_PROPERTY(onChangeLittleColor, RCTBubblingEventBlock);


- (UIView *)view
{
  HQTestView * view = [[HQTestView alloc]init];
  return view;
}


RCT_EXPORT_METHOD(callNativeMethod:(nonnull NSNumber *)reactTag) {
  
  [self.bridge.uiManager addUIBlock:^(__unused RCTUIManager *uiManager, NSDictionary<NSNumber *, HQTestView *> *viewRegistry) {
    HQTestView *view = viewRegistry[reactTag];
    if (!view || ![view isKindOfClass:[HQTestView class]]) {
      RCTLogError(@"Cannot find NativeView with tag #%@", reactTag);
      return;
    }
    [view callNativeMethod];
    
  }];
}


- (NSDictionary *)constantsToExport
{
  HQTestView *dp = [[HQTestView alloc] init];
  [dp layoutIfNeeded];

  return @{
    @"ComponentHeight": @(500),
    @"ComponentWidth": @(SCREEN_WIDTH),
    @"ComponentColor":@"#342344",
    
  };
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

@end
