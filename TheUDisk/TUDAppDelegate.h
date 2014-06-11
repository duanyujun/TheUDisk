//
//  TUDAppDelegate.h
//  TheUDisk
//
//  Created by James on 14-6-6.
//  Copyright (c) 2014年 Yutet. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HTTPServer;

@interface TUDAppDelegate : UIResponder <UIApplicationDelegate>
{
    UInt64 currentDataLength;
    
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) HTTPServer *httpserver;
@property (strong, nonatomic) UIProgressView *progressView;     //upload progress
@property (strong, nonatomic) UILabel *lbHTTPServer;
@property (strong, nonatomic) UILabel *lbFileSize;                      //Total size of uploaded file
@property (strong, nonatomic) UILabel *lbCurrentFileSize;           //The size of the current upload

@end
