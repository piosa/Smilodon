//
//  PJRenderPoint.m
//  Smilodon
//
//  Created by PiosaJiang on 13-7-4.
//  Copyright (c) 2013年 PiosaJiang. All rights reserved.
//

#import "PJRenderPoint.h"

@interface PJRenderPoint()

@end

@implementation PJRenderPoint
- (id)initWithPoint:(CGPoint)positionPoint{
    self = [super init];
    if (self) {
        self.renderPoint = positionPoint;
    }
    return self;
}
@end
