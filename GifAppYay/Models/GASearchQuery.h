//
//  GASearchQuery.h
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GASearchQuery : NSObject

@property (strong) NSDate *addDate;
@property (strong) NSString *searchString;

- (instancetype)initWithString:(NSString *)string;

@end
