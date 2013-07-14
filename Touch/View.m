//
//  View.m
//  Touch
//
//  Created by PHILIP JACOBS on 7/14/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import "View.h"
#import "LittleView.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
		CGFloat lvW = 80;
		CGFloat lvH = 40;
		CGFloat vW = self.bounds.size.width;
		CGFloat vH = self.bounds.size.height;
				
		CGRect f = CGRectMake((vW - lvW) / 2, (vH - lvH) / 2, lvW, lvH);
		littleview = [[LittleView alloc] initWithFrame: f];
		[self addSubview: littleview];
		
		/*
		CGRect g = CGRectMake(0, 50, 80, 40);
		littleview1 = [[LittleView alloc] initWithFrame: g];
		[self addSubview: littleview1];
		*/
    }
    return self;
}


- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	if (touches.count > 0) {
		//UITouch *touch = [touches anyObject];
		//CGPoint point = [touch locationInView: self];
		littleview.center = [[touches anyObject] locationInView: self];
	}
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	littleview.backgroundColor = [UIColor greenColor];
	}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	littleview.backgroundColor = [UIColor yellowColor];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
}
*/

@end
