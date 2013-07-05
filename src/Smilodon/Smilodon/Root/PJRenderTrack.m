//
//  PJRenderTrack.m
//  Smilodon
//
//  Created by PiosaJiang on 13-7-4.
//  Copyright (c) 2013年 PiosaJiang. All rights reserved.
//

#import "PJRenderTrack.h"

#import "PJRenderPoint.h"

@interface PJRenderTrack()
@property(nonatomic,strong)NSMutableArray * renderPointArray;
@end

@implementation PJRenderTrack
- (id)init{
    self = [super init];
    if (self) {
        self.renderPointArray = [NSMutableArray array];
    }
    return self;
}

- (void)addRenderPoint:(CGPoint)renderPoint{
    [_renderPointArray addObject:[[PJRenderPoint alloc] initWithPoint:renderPoint]];
}

- (void)drawTrack:(CGContextRef)context{
    if (_renderPointArray!=nil && [_renderPointArray count]!=0) {
        //move line point
        PJRenderPoint * firstPoint = [_renderPointArray objectAtIndex:0];
        CGContextMoveToPoint(context, firstPoint.renderPoint.x, firstPoint.renderPoint.y);
        
        //add line point
        for (int loop=1; loop<[_renderPointArray count]; loop++) {
            PJRenderPoint * renderPoint = [_renderPointArray objectAtIndex:loop];
            CGContextAddLineToPoint(context, renderPoint.renderPoint.x, renderPoint.renderPoint.y);
        }
        
        //close line path
        CGContextStrokePath(context);
    }
}
@end
