//
//  KangarooHopGame.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "KangarooHopGame.h"

@implementation KangarooHopGame

-(void)setAdjacencyLists
{
    // 5x5 grid. array is 1 offset
    //array[i] is the adjacency list for KBoardCell located at board[i]
    
    NSArray *array = @[[NSSet set],
                       [NSSet setWithArray:@[@7]],
                       [NSSet set],
                       [NSSet setWithArray:@[@7,@9]],
                       [NSSet set],
                       [NSSet setWithArray:@[@9]],
                       [NSSet set],
                       [NSSet setWithArray:@[@1,@3,@11,@13]],
                       [NSSet set],
                       [NSSet setWithArray:@[@3,@5,@13,@15]],
                       [NSSet set],
                       [NSSet setWithArray:@[@7, @17]],
                       [NSSet set],
                       [NSSet setWithArray:@[@7,@9,@17,@19]],
                       [NSSet set],
                       [NSSet setWithArray:@[@9,@19]],
                       [NSSet set],
                       [NSSet setWithArray:@[@11,@13,@21,@23]],
                       [NSSet set],
                       [NSSet setWithArray:@[@13,@15,@23,@25]],
                       [NSSet set],
                       [NSSet setWithArray:@[@17]],
                       [NSSet set],
                       [NSSet setWithArray:@[@17,@19]],
                       [NSSet set],
                       [NSSet setWithArray:@[@19]]
                       ];
                       
    self.allAdjacencyLists = array;
}

-(void)setup
{
    // do the most simple setup possible, two game pieces, one at 7 and one at 13
    //make a KBoard
    self.board = [KBoard initWithCapacity:25];
    [self setAdjacencyLists];
    
    // place pieces at BoardCell 7 and 13
    KBoardCell *cell7 = [KBoardCell initWithPiece:[KPiece newKangarooHopPiece] andAdjacencyList:[self.allAdjacencyLists objectAtIndex:7]];
    KBoardCell *cell13 = [KBoardCell initWithPiece:[KPiece newKangarooHopPiece] andAdjacencyList:[self.allAdjacencyLists objectAtIndex:13]];
    
    [self.board replaceObjectAtIndex:7 withObject:cell7];
    [self.board replaceObjectAtIndex:13 withObject:cell13];
    
    NSLog(@"Adjacently list sets are %@",self.allAdjacencyLists);
    
}


-(void)run
{
    [self setup];
    NSLog(@"run loop begun");

}

-(void)pause
{
    
}

-(void)quit
{
    
}

-(void)setupGameFromBoard:(KBoard*)board
{
    self.board = board;
}

@end
