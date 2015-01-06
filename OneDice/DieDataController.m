//
//  DieDataController.m
//  OneDice
//
//  Created by Angelito M. Goulart on 16/04/14.
//  Copyright (c) 2014 Angelito M. Goulart. All rights reserved.
//

#import "DieDataController.h"

@implementation DieDataController

- (int)getDieNumber
{
    int r = ((arc4random() % 6) + 1);
    return r;
}

@end
