//
//  Perfix.h
//  HQProject
//
//  Created by 张鸿炜 on 2021/11/11.
//

#ifndef Perfix_h
#define Perfix_h


#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height - [[UIApplication sharedApplication] statusBarFrame].size.height
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width


#define TP_SafeAreaInsets \
({UIEdgeInsets edge;\
if (@available(iOS 11.0, *)) { edge = [UIApplication sharedApplication].delegate.window.safeAreaInsets; } else { edge = UIEdgeInsetsZero; }\
(edge);\
})\



#endif /* Perfix_h */
