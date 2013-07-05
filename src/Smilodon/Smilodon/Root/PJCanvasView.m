//
//  PJCanvasView.m
//  Smilodon
//
//  Created by PiosaJiang on 13-7-4.
//  Copyright (c) 2013年 PiosaJiang. All rights reserved.
//

#import "PJCanvasView.h"

#import "PJRenderTrack.h"

@interface PJCanvasView()
@property(nonatomic,strong) NSMutableArray * renderTrackArray;
@property(nonatomic,strong) PJRenderTrack * renderTrack;
@end

@implementation PJCanvasView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.renderTrackArray = [NSMutableArray array];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    for (PJRenderTrack * renderTrack in _renderTrackArray) {
        [renderTrack drawTrack:context];
    }
    
    CGContextRestoreGState(context);
}

- (void)addTouchPoint:(CGPoint)touchPoint{
    [_renderTrack addRenderPoint:touchPoint];
    [self setNeedsDisplay];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.renderTrack = [[PJRenderTrack alloc] init];
    [_renderTrackArray addObject:_renderTrack];
    
    UITouch * anyTouch = [touches anyObject];
    [self addTouchPoint:[anyTouch locationInView:self]];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * anyTouch = [touches anyObject];
    [self addTouchPoint:[anyTouch locationInView:self]];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{

}


@end
