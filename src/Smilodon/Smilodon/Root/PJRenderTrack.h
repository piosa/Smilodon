//
//  PJRenderTrack.h
//  Smilodon
//
//  Created by PiosaJiang on 13-7-4.
//  Copyright (c) 2013年 PiosaJiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PJRenderTrack : NSObject
- (void)addRenderPoint:(CGPoint)renderPoint;
- (void)drawTrack:(CGContextRef)context;
@end
