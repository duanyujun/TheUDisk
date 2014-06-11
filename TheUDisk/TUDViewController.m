//
//  TUDViewController.m
//  TheUDisk
//
//  Created by James on 14-6-6.
//  Copyright (c) 2014年 Yutet. All rights reserved.
//

#import "TUDViewController.h"

@interface TUDViewController ()

@end

@implementation TUDViewController

@synthesize vtableView;
@synthesize array;
@synthesize folderImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    float width = self.view.bounds.size.width;
    float height = self.view.bounds.size.height;
    
	vtableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 50, width, height - 50) style:UITableViewStylePlain];
    //    CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)
    
    vtableView.delegate = self;
    vtableView.dataSource = self;
    [self.view addSubview:self.vtableView];
    //vtableView.editing = YES;
    
    
    NSMutableArray *arrayValue = [[NSMutableArray alloc]init];
    for(int i=0; i<10; i++){
        NSString *value =[NSString stringWithFormat:@"%d",i];
        [arrayValue addObject:value];
    }
    
    array = arrayValue;
    folderImage = [UIImage imageNamed:@"folder_pic.png"];
    
    
    //新建导航栏
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, width, 50)];
    
    
    //创建一个导航栏集合
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    
    //创建一个左边按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"左边" style:UIBarButtonItemStylePlain
        target:self action:@selector(clickLeftButton)];
    

    
    //创建一个右边按钮
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"右边" style:UIBarButtonItemStylePlain
        target:self action:@selector(clickRightButton)];
    //创建一个右边按钮
    UIBarButtonItem *rightButton2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera
        target:self action:@selector(clickRightButton)];
    
    NSArray *btnArray = [[NSArray alloc] initWithObjects:rightButton,
                         rightButton2,nil];
    
    //设置导航栏内容
    [navigationItem setTitle:@"NVBar"];
    
    //把导航栏集合添加入导航栏中，设置动画关闭
    [navigationBar pushNavigationItem:navigationItem animated:NO];
    
    //把左右两个按钮添加入导航栏集合中
    [navigationItem setLeftBarButtonItem:leftButton];
    
    
    navigationItem.rightBarButtonItems = btnArray;
    
    //[navigationItem setRightBarButtonItem:rightButton];
    
    [self.view addSubview:navigationBar];
}

-(void)clickLeftButton
{
    
    [self showDialog:@"点击了导航栏左边按钮"];
    
}


-(void)clickRightButton
{
    
    [self showDialog:@"点击了导航栏右边按钮"];
    
}


-(void)showDialog:(NSString *) str
{
    
    UIAlertView * alert= [[UIAlertView alloc] initWithTitle:@"这是一个对话框" message:str delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    
    [alert show];
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [vtableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
        
    }
    
    cell.textLabel.text = [array objectAtIndex:[indexPath row]];
    cell.detailTextLabel.text = [array objectAtIndex:[indexPath row]];
    cell.detailTextLabel.textColor = [UIColor lightGrayColor];
    cell.imageView.image = folderImage;
    
    cell.indentationLevel = 1;
    cell.indentationWidth = 6.0f;
    
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
