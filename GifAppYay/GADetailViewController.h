//
//  GADetailViewController.h
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GASearchQuery.h"

@interface GADetailViewController : UIViewController

@property (strong, nonatomic) GASearchQuery *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
