//
//  CanvasView.m
//  TouchPainter
//
//  Created by plum on 2018/2/24.
//  Copyright © 2018年 plum. All rights reserved.
//

#import "CanvasView.h"
#import "MarkRender.h"

@implementation CanvasView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    MarkRender *render = [[MarkRender alloc] initWithCGContext:context];
    [_mark acceptMarkVisitor:render];
}


@end
