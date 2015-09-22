//
//  GJUtils.m
//  GJB4iPhone
//
//  Created by macbook on 15/9/19.
//  Copyright © 2015年 zhenwang. All rights reserved.
//

#import "GJUtils.h"
#import "KeychainItemWrapper.h"
#import <CommonCrypto/CommonCrypto.h>

static float getSystemVersion()
{
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

static NSString * getAppVersion()
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
}

static NSString * getUUID()
{
    NSString * uuidStr = nil;
    KeychainItemWrapper * keychain = [[KeychainItemWrapper alloc] initWithIdentifier:@"uuid"
                                                                         accessGroup:@"com.zhenwang.uuid"];
    uuidStr = [keychain objectForKey:(id)kSecValueData];
    
    if (uuidStr) return uuidStr;
    
    CFUUIDRef uuidRef = CFUUIDCreate(NULL);
    CFStringRef uuid  = CFUUIDCreateString(NULL, uuidRef);
    uuidStr = [(__bridge NSString *)uuid copy];
    [keychain setObject:uuidStr forKey:(id)kSecValueData]; //保存在钥匙串
    CFRelease(uuidRef);
    CFRelease(uuid);
    return uuidStr;
}

static NSString * getBundleFilePath(NSString * filename, NSString * suffix)
{
    NSString * path = [[NSBundle mainBundle] pathForResource:filename ofType:suffix];
    
    if (path) return path;
        
    return nil;
}

static BOOL validString(NSString * string)
{
    if (string && [string isKindOfClass:[NSString class]] && string.length > 0)
    {
        return YES;
    }
    return NO;
}

static BOOL validArray(NSArray * array)
{
    if (array && [array isKindOfClass:[NSArray class]] && array.count > 0)
    {
        return YES;
    }
    return NO;
}

static BOOL validDictionary(NSDictionary * dictionary)
{
    if (dictionary && [dictionary isKindOfClass:[NSDictionary class]] && dictionary.allKeys > 0)
    {
        return YES;
    }
    return NO;
}

static NSString * md5Encode(NSString * plainText)
{
    if (validString(plainText)) return nil;
    const char *cStr = [plainText UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    NSString *string = [NSString stringWithFormat:
                        @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
                        result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
                        result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]
                        ];
    return [string lowercaseString];
}

static ScreenSizeType getScreenSizeType()
{
    ScreenSizeType type = ScreenSize_Unknown;
    int height = MAX([[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    switch (height)
    {
        case 736: type = ScreenSize_iPhone6p; break;
        case 667: type = ScreenSize_iPhone6;  break;
        case 568: type = ScreenSize_iPhone5;  break;
        case 480: type = ScreenSize_iPhone4;  break;
    }
    return type;
}

static void removeAllSubviews(UIView * view)
{
    if (view)
    {
        for (UIView * subView in view.subviews)
        {
            [subView removeFromSuperview];
        }
    }
}

GJUtils_t GJUtils = {
    getSystemVersion,
    getAppVersion,
    getUUID,
    getBundleFilePath,
    validString,
    validArray,
    validDictionary,
    md5Encode,
    getScreenSizeType,
    removeAllSubviews
};
