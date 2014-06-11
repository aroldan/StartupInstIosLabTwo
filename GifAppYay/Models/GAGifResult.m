//
//  GAGifResult.m
//  GifAppYay
//
//  Created by Anthony Roldan on 6/10/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "GAGifResult.h"

@implementation GAGifResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"giphyUrl": @"url",
             @"stillImageUrl": @"images.fixed_height_still.url"
             };
    
    
}

// this tells mantle how to translate the url property to an NSURL instead of a simple string
+ (NSValueTransformer *)giphyUrlJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)stillImageUrlJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}



@end
