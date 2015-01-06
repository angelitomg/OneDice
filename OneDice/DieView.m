//
//  DieView.m
//  OneDice
//
//  Created by Angelito M. Goulart on 16/04/14.
//  Copyright (c) 2014 Angelito M. Goulart. All rights reserved.
//

#import "DieView.h"

@implementation DieView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.dieImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:self.dieImageView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) showDieNumber:(int)num;
{
    NSString *fileName = [NSString stringWithFormat:@"die-face-%d", num];
    self.dieImageView.image = [UIImage imageNamed:fileName];
}

@end
