//
//  KBoardCell.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//


#import "KBoardCell.h"


@implementation KBoardCell

// class factory
+(instancetype)initWithPiece:(KPiece*)piece andAdjacencyList:(NSSet*)adjacencyList
{
    return [[KBoardCell alloc]initWithPiece:piece andAdjacencyList:adjacencyList];
}
//designated initializer
-(instancetype)initWithPiece:(KPiece*)piece andAdjacencyList:(NSSet*)adjacencyList
{
    self = [super init];
    self.piece = piece;
    self.adjacencyList = adjacencyList;
    return self;
}

- (BOOL)isOccupied
{
    return (self.piece != nil);
}

- (void)removePiece
{
    self.piece = nil;
}




@end
