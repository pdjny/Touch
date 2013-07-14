//
//  LittleView.m
//  Touch
//
//  Created by PHILIP JACOBS on 7/14/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import "LittleView.h"

@implementation LittleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	UIFont *font = [UIFont systemFontOfSize: 20];
    [@"Hello!" drawAtPoint: CGPointZero withFont: font];
}


@end
