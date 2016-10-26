//
//  ContainerViewController.h
//  StocksApp
//
//  Created by rem{e}koh on 10/18/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksListTableViewController.h"
#import "StockDisplayViewController.h"

@interface ContainerViewController : UIViewController<StocksListTableViewControllerDelegate>

{
    UIDynamicAnimator *animator;
    UIGravityBehavior *gravity;
    UICollisionBehavior *collision;
    UISnapBehavior *snap; 
}

@property (nonatomic, strong) StocksListTableViewController *stocksListTableViewController;

@property (nonatomic, strong) StockDisplayViewController *stockDisplayViewController;

@end
