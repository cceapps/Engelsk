//
//  DetailViewController.h
//  Engelsk
//
//  Created by Christoffer Carl evers on 21/09/12.
//  Copyright (c) 2012 Christoffer Carl evers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
