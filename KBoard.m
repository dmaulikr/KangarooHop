//
//  KBoard.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "KBoard.h"

@implementation KBoard
-(instancetype)initWithCapacity:(NSUInteger)numItems
{   //creates KBoard for 1 offset use, i.e. Kboard[0] will never be assigned
    
    self = [super initWithCapacity:(numItems+1)];
    
    
    return self;
    
}
+(instancetype)initWithCapacity:(NSUInteger)numItems
{
    return [[KBoard alloc]initWithCapacity:numItems];
}
@end
