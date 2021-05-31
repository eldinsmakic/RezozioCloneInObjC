//
//  ViewController.m
//  TestObjectiveC
//
//  Created by eldin smakic on 27/05/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString * cellID = @"testID";

- (void)viewDidLoad {
    [super viewDidLoad];

    self.cellId = cellID;
    self.navigationItem.title = @"Test";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.view.backgroundColor = UIColor.whiteColor;
    self.tableView.backgroundColor = UIColor.whiteColor;
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:self.cellId];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.cellId];
    cell.backgroundColor = UIColor.greenColor;
    cell.textLabel.text = @"courses";

    return cell;
}

@end
