//
//  TUDViewController.h
//  TheUDisk
//
//  Created by James on 14-6-6.
//  Copyright (c) 2014年 Yutet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TUDViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    
    UITableView *vtableView;
    NSArray *array;
    UIImage	*folderImage;
}

@property (strong, nonatomic)UITableView *vtableView;
@property (strong, nonatomic)NSArray *array;
@property (strong, nonatomic)UIImage *folderImage;

@end
