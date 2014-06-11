//
//  GAGifResult.h
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <Mantle.h>

@interface GAGifResult : MTLModel<MTLJSONSerializing>

@property (strong, nonatomic) NSURL *giphyUrl;
@property (strong, nonatomic) NSURL *stillImageUrl;

@end
