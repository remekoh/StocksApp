//
//  StockDisplayViewController.h
//  StocksApp
//
//  Created by rem{e}koh on 10/18/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksListTableViewController.h"

//@protocol StockDisplayViewControllerDelegate <NSObject>
//
//-(void) displayStockThatWasPressed: (NSString *) nameOfStock;
//
//@end

@interface StockDisplayViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *stockDisplayLabel;
@property (nonatomic, weak) IBOutlet UILabel *stockPriceLabel;

//// Delegate
//@property (nonatomic, weak) id<StockDisplayViewControllerDelegate> delegate;

@end
