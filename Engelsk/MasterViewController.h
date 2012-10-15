//
//  MasterViewController.h
//  Engelsk
//
//  Created by Christoffer Carl evers on 21/09/12.
//  Copyright (c) 2012 Christoffer Carl evers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController{
    NSMutableArray *playersArray;

}

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
