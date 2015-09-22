//
//  GJUtils.h
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ScreenSizeType) {
    ScreenSize_Unknown = 0,
    ScreenSize_iPhone4,
    ScreenSize_iPhone5,
    ScreenSize_iPhone6,
    ScreenSize_iPhone6p
};

typedef struct _GJUtils_t {
    
    /**
     *  获取系统的版本号
     */
    float (*getSystemVersion)();
    
    /**
     *  获取App的当前版本号
     */
    NSString * (*getAppVersion)();

    /**
     *  获取设备UUID
     */
    NSString * (*getUUID)();
    
    /**
     *  查找Bundle资源文件
     */
    NSString * (*getBundleFilePath)(NSString * filename, NSString * suffix);
    
    /**
     *  校验字符串 (必须是NSString类型, 字符串长度大于1)
     */
    BOOL (*validString)(NSString * string);
    
    /**
     *  校验数组 (必须是NSArray类型, 数组长度大于1)
     */
    BOOL (*validArray)(NSArray * array);
    
    /**
     *  校验字典 (必须是NSDictionary类型, 键值对数量大于1)
     */
    BOOL (*validDictionary)(NSDictionary * dictionary);
    
    /**
     *  计算MD5加密后的字符串
     */
    NSString * (*md5Encode)(NSString *);
    
    /**
     *  获取当前设备的屏幕类型
     */
    ScreenSizeType (*getScreenSizeType)();
    
    /**
     *  移除view的所有子视图
     */
    void (*removeAllSubviews)(UIView * view);

} GJUtils_t;

extern GJUtils_t GJUtils;
