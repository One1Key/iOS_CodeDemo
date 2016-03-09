//
//  UIViewController+Deliver.m
//  firstNursingWorkers
//
//  Created by mac book on 16/3/7.
//  Copyright © 2016年 HB. All rights reserved.
//

#import "UIViewController+Deliver.h"

@implementation UIViewController (Deliver)
- (SendText)sendText{
    return objc_getAssociatedObject(self, @selector(sendText));
}
- (void)setSendText:(SendText)sendText{
    objc_setAssociatedObject(self, @selector(sendText), sendText, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (SendDictionary)sendDictionary{
    return objc_getAssociatedObject(self, @selector(sendDictionary));
}
- (void)setSendDictionary:(SendDictionary)sendDictionary{
    objc_setAssociatedObject(self, @selector(sendDictionary), sendDictionary, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (SendArray)sendArray{
    return objc_getAssociatedObject(self, @selector(sendArray));
}
- (void)setSendArray:(SendArray)sendArray{
    objc_setAssociatedObject(self, @selector(sendArray), sendArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (SendObject)sendObject{
    return objc_getAssociatedObject(self, @selector(sendObject));
}
- (void)setSendObject:(SendObject)sendObject{
    objc_setAssociatedObject(self, @selector(sendObject), sendObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 *  创建自定义按钮
 */
- (UIButton *)createCustomerButtonWithTitle:(NSString *)title sel:(SEL)sel frame:(CGRect)frame{
    UIButton *button = [[UIButton alloc] init];
    button.frame = frame;
    button.backgroundColor = COLOR_RANDOM;
    button.titleLabel.numberOfLines = 0;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:nil forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    return button;
}
@end