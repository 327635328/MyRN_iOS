//
//  HQTestView.h
//  HQProject
//
//  Created by 张鸿炜 on 2021/11/11.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>
NS_ASSUME_NONNULL_BEGIN

@interface HQTestView : UIView

@property (nonatomic, copy) RCTBubblingEventBlock onChangeLittleColor;


-(void)callNativeMethod;

@end

NS_ASSUME_NONNULL_END
