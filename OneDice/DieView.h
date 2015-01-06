//
//  DieView.h
//  OneDice
//
//  Created by Angelito M. Goulart on 16/04/14.
//  Copyright (c) 2014 Angelito M. Goulart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DieView : UIView

# pragma mark - Properties

@property (strong, nonatomic) UIImageView *dieImageView;

# pragma mark - Methods

- (void)showDieNumber:(int)num;

@end
