//
//  ViewController.m
//  LoadingAnim
//
//  Created by wangrui on 16/9/8.
//  Copyright © 2016年 tools. All rights reserved.
//

#import "ViewController.h"
#import "WRShowLoadingVC.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,weak) UITableView *myTableView;

@property (nonatomic,strong) NSArray *itemArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
}

// 创建TableView
-(void)setupTableView{
    UITableView *myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    myTableView.dataSource = self;
    myTableView.delegate = self;
    [self.view addSubview:myTableView];
    self.myTableView = myTableView;
}

#pragma - mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemArray.count;
}

#pragma - mark UITableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * const cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellID];
    }
    cell.textLabel.text = self.itemArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    WRShowLoadingVC *showLoadingVC = [[WRShowLoadingVC alloc] init];
    [self.navigationController pushViewController:showLoadingVC animated:YES];
}


#pragma - mark 懒加载
-(NSArray *)itemArray{
    if (!_itemArray) {
        _itemArray = @[@"图片组成的gif动画展示"];
        [self.myTableView reloadData];
    }
    return _itemArray;
}

@end
