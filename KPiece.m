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
    
    if (self)
    {
        self.name = name;
        self.image = [UIImage imageNamed:imageName];
    }
    return self;
}


+(instancetype)newKangarooHopPiece
{
    return [[KPiece alloc]initWithName:@"KangarooHopPiece" andImageName:@"kangaroo-icon.png"];
}

@end
