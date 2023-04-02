//
//  Swizzler.m
//  F5
//
//  Created by Ryan Nair on 4/2/23.
//

#include "Swizzler.h"
#import <UIKit/UIView.h>
#import <objc/message.h>

static UIColor* color = NULL;
static UIColor* (*originalTintColor)(__unsafe_unretained UIView* const, SEL);

static UIColor* customColorFunction(__unsafe_unretained UIView* const self, SEL _cmd) {
    if (object_getClass(self) == objc_getClass("UIImageView")) {
        return ((UIColor*(*)(UIView*, SEL)) originalTintColor) (self, _cmd);
    }
    
    return color;
}

void swizzleCustomTintColor(void) {
    if (color == NULL) {
        originalTintColor = (UIColor*(*)(UIView*, SEL)) method_setImplementation(class_getInstanceMethod(objc_getClass("UIView"), @selector(tintColor)), (IMP)&customColorFunction);
    }
    CFIndex num = CFPreferencesGetAppIntegerValue(CFSTR("customTintColor"), kCFPreferencesCurrentApplication, NULL);
    switch (num) {
        case 1:
            color = [UIColor systemOrangeColor];
            break;
        case 2:
            color = [UIColor systemGreenColor];
            break;
        case 3:
            color = [UIColor systemTealColor];
            break;
        case 4:
            color = [UIColor systemRedColor];
            break;
        case 5:
            color = [UIColor systemPurpleColor];
            break;
        case 6:
            color = [UIColor systemIndigoColor];
            break;
        default:
            color = [UIColor systemBlueColor];
    }
}
