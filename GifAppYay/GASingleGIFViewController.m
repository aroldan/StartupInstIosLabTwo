//
//  GASingleGIFViewController.m
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "GASingleGIFViewController.h"
#import "GAGifResult.h"
#import <UIImageView+AFNetworking.h>
#import <AFNetworking.h>
#import <Mantle.h>

@implementation GASingleGIFViewController

- (void)viewDidLoad {
    NSLog(@"Loading trending GIFs..");
    
    [self fetchTrendingGif];
}

- (void)fetchTrendingGif {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    // tell the manager that the response body will be JSON
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [manager GET:@"http://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC" parameters:nil success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
        NSLog(@"response object: %@", responseObject);
        
        NSDictionary *firstImage = responseObject[@"data"][0];
        
        // transform the raw dictionary into a model object
        GAGifResult *firstGif = [MTLJSONAdapter modelOfClass:[GAGifResult class] fromJSONDictionary:firstImage error:nil];
        
        NSLog(@"First gif: %@", firstGif);
        self.activityIndicator.hidden = YES;
        [self.imageView setImageWithURL:firstGif.stillImageUrl];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Request failed");
    }];
}

@end
