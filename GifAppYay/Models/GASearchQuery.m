//
//  GASearchQuery.m
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "GASearchQuery.h"

@implementation GASearchQuery

- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    if (self) {
        self.addDate = [NSDate date];
        self.searchString = string;
    }
    return self;
}

@end
