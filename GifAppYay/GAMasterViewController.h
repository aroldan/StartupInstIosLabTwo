//
//  GAMasterViewController.h
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GAMasterViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *searchInput;

- (IBAction)addSearch:(id)sender;

@end
