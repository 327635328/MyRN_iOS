//
//  HQTestView.m
//  HQProject
//
//  Created by 张鸿炜 on 2021/11/11.
//

#import "HQTestView.h"

@interface HQTestView ()
@property (nonatomic, assign) BOOL zoomEnabled;
@property (nonatomic, retain) UIView * littleView;


@end

@implementation HQTestView

- (instancetype)init
{
  self = [super init];
  if (self) {
    
    _littleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    _littleView.backgroundColor = [UIColor yellowColor];
    [self addSubview:_littleView];
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击" forState:0];
    btn.frame = CGRectMake(100, 0, 70, 30);
    [self addSubview:btn];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
  }
  return self;
}

-(void)setZoomEnabled:(BOOL)zoomEnabled
{
  _zoomEnabled = zoomEnabled;
  if (_zoomEnabled) {
//    self.backgroundColor = [UIColor greenColor];
  }else{
//    self.backgroundColor = [UIColor blueColor];
  }
  
}


-(void)callNativeMethod
{
  UIView* view = [[UIView alloc]initWithFrame:CGRectMake(60, 0, 30, 30)];
  view.backgroundColor = [UIColor redColor];
  [self addSubview:view];
  
  
}

-(void)btnAction
{
  if (self.onChangeLittleColor) {
    self.onChangeLittleColor(@{@"title":@"你好啊"});
    _littleView.backgroundColor = [UIColor orangeColor];
  }
}

@end
