//
//  StocksListTableViewController.h
//  StocksApp
//
//  Created by rem{e}koh on 10/18/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"

@protocol StocksListTableViewControllerDelegate <NSObject>

-(void) displayStockThatWasPressed: (Stock *) stock;

@end

@interface StocksListTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

// Stocks Array
{
    NSMutableArray *listOfStocks;
}


@property (nonatomic,weak) IBOutlet UITableView *tableView;

// Delegate
@property (nonatomic, weak) id<StocksListTableViewControllerDelegate> delegate;

@end


