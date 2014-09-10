//
//  KBoard.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "KBoard.h"
#import "KBoardCell.h"

@implementation KBoard

+(instancetype)initWithCapacity:(NSUInteger)numItems
{
    return [[KBoard alloc]initWithCapacity:numItems];
}

+(instancetype)initWithArrayOfKBoardCells:(NSArray*)array
{
    //array MUST be 1 offset!!!!!!!!
    KBoard *kboard = (KBoard *)[[KBoard superclass]arrayWithCapacity:[array count]];
    [kboard setArray:array];
    return kboard;

}

//designated initializer
-(instancetype)initWithCapacity:(NSUInteger)numItems
{   //creates KBoard for 1 offset use, i.e. Kboard[0] will never be assigned for any instance.
    
    self = [super initWithCapacity:(numItems+1)];
    
    // pump empty KBoardCells into this KBoard before returning.
    
    for (int i=1; i <= numItems; i++)
    {
        [self insertObject:[KBoardCell initWithPiece:nil andAdjacencyList:nil]
                   atIndex:i];
    }
    
    return self;
    
}
@end


