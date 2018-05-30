//
//  ViewController.m
//  CharacterEquidistantCutting
//
//  Created by dev on 2018/5/30.
//  Copyright © 2018年 dev. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Utils.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataAry;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"kdkeieginK  k课时咳咳咳可别 吾的皇驾到几😁可可儿👌个看😁😁打得开可开😁😁😁dkdekekdkd😁😁ekekekdk 😁😁😁😁😁😁";
    
    self.dataAry = [NSMutableArray arrayWithArray:[str getArrayOfString:str font:[UIFont systemFontOfSize:14] width:100]];
    
    NSLog(@"------dataAry:%@------",self.dataAry);
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    self.tableView = tableView;
    [self.view addSubview:tableView];
    
    [tableView registerClass:NSClassFromString(@"UITableViewCell") forCellReuseIdentifier:identifier];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataAry.count;
}

static NSString *identifier = @"identifier";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.textLabel.text = [self.dataAry objectAtIndex:indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
