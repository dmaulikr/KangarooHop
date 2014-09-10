//
//  KPiece.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "KPiece.h"

@implementation KPiece
-(instancetype)initWithName:(NSString*)name andImageName:(NSString*)imageName
{
    self = [super init];
    
    
    return self;
}
+(instancetype)new
{
    return [[KPiece alloc]initWithName:@"KangarooHop" andImageName:@"KangarooImage"];
}

@end
