//
//  ContainerViewController.m
//  StocksApp
//
//  Created by rem{e}koh on 10/18/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *childrenViewControllers = self.childViewControllers;
    
    self.stocksListTableViewController = childrenViewControllers[0];
    self.stocksListTableViewController.delegate = self;
    
    self.stockDisplayViewController = childrenViewControllers[1];
    
}

-(void) displayStockThatWasPressed:(Stock *) stock {
    self.stockDisplayViewController.stockDisplayLabel.text = stock.stockName;
    self.stockDisplayViewController.stockPriceLabel.text = stock.stockPrice;
    
    self.stockDisplayViewController.stockDisplayLabel.frame = CGRectMake(16, 50, 343, 35);
    
    self.stockDisplayViewController.stockPriceLabel.frame = CGRectMake(15, 215, 343, 35);
    
    animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.stockDisplayViewController.view];
    
    gravity = [[UIGravityBehavior alloc] initWithItems:@[self.stockDisplayViewController.stockDisplayLabel]];
    
    collision = [[UICollisionBehavior alloc] initWithItems:@[self.stockDisplayViewController.stockDisplayLabel]];

    CGPoint stockHiddenBoundary = CGPointMake(self.stockDisplayViewController.stockPriceLabel.frame.origin.x + self.stockDisplayViewController.stockPriceLabel.frame.size.width, self.stockDisplayViewController.stockPriceLabel.frame.origin.y);
    
   [collision addBoundaryWithIdentifier:@"barrier" fromPoint:self.stockDisplayViewController.stockPriceLabel.frame.origin  toPoint:stockHiddenBoundary];
    
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [animator addBehavior:gravity];
    [animator addBehavior:collision];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
