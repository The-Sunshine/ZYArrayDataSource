//
//  ViewController.m
//  ZYArrayDataSource
//
//  Created by zy on 2022/1/14.
//

#import "ViewController.h"
#import "ZYArrayDataSource.h"

@interface ViewController ()<UITableViewDelegate>

@property (nonatomic,strong) ZYArrayDataSource * dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
    // Do any additional setup after loading the view.
}

- (void)initUI {
    UITableView * tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    tableView.frame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height);
    
    ZYArrayDataSource * dataSource = [ZYArrayDataSource newWithReuseIdentifier:@"cell" configureBlock:^(id  _Nonnull cell, NSIndexPath * _Nonnull indexPath) {
        UITableViewCell * asd = (UITableViewCell *)cell;
        asd.textLabel.text = @"白衣-------";
    }];
    _dataSource = dataSource;
    tableView.dataSource = _dataSource;
    [dataSource reloadTableCollectionView:tableView numberOfSections:2 numberOfRows:10];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
 
    
}

@end
