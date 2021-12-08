//
//  ViewController.m
//  iOSInterviewDemo
//
//  Created by afer on 2021/12/8.
//

#import "ViewController.h"
#import "TitleCell.h"
#import "RunloopVC.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"1. Runloop", @"2"];
    [self.tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TitleCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([TitleCell class]) forIndexPath:indexPath];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        RunloopVC *vc = [[RunloopVC alloc] init];
        vc.title = self.array[indexPath.row];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
