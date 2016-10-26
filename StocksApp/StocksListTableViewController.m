//
//  StocksListTableViewController.m
//  StocksApp
//
//  Created by rem{e}koh on 10/18/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "StocksListTableViewController.h"

@interface StocksListTableViewController ()

@end

@implementation StocksListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    listOfStocks = [[NSMutableArray alloc]init];
    
    // building stock list 
    
    Stock *brka = [[Stock alloc] init];
    brka.stockName = @"BRK-A";
    brka.stockPrice = @"$216,300.00";
    [listOfStocks addObject:brka];
    
    Stock *brkb = [[Stock alloc] init];
    brkb.stockName = @"BRK-B";
    brkb.stockPrice = @"$144.30";
    [listOfStocks addObject:brkb];
    
    Stock *vghcx = [[Stock alloc] init];
    vghcx.stockName = @"VGHCX";
    vghcx.stockPrice = @"$201.24";
    [listOfStocks addObject:vghcx];
  
    Stock *coke = [[Stock alloc] init];
    coke.stockName = @"COKE";
    coke.stockPrice = @"$142.40";
    [listOfStocks addObject:coke];
    
    Stock *intc = [[Stock alloc] init];
    intc.stockName = @"INTC";
    intc.stockPrice = @"$37.75";
    [listOfStocks addObject:intc];
    
    Stock *apple = [[Stock alloc] init];
    apple.stockName = @"AAPL";
    apple.stockPrice = @"$117.47";
    [listOfStocks addObject:apple];
    
    Stock *tesla = [[Stock alloc] init];
    tesla.stockName = @"TSLA";
    tesla.stockPrice = @"$199.10";
    [listOfStocks addObject:tesla];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listOfStocks count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StockListCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Stock *stock = listOfStocks[indexPath.row];
    
    cell.textLabel.text = stock.stockName;
    cell.detailTextLabel.text = stock.stockPrice;
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    [self.delegate displayStockThatWasPressed:listOfStocks[indexPath.row]];
    
    
}

@end
