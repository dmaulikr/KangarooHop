//
//  KangarooHopGame.m
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "KangarooHopGame.h"

@implementation KangarooHopGame


-(void)setup
{
    // do the most simple setup possible, two game pieces, one at 7 and one at 13
    // target = 7, destination  = 13
    
    KBoardCell *cell7 = [KBoardCell initWithPiece:[KPiece newKangarooHopPiece] andAdjacencyList:[self.adjacencyLists objectAtIndex:7]];
    
    KBoardCell *cell13 = [KBoardCell initWithPiece:[KPiece newKangarooHopPiece] andAdjacencyList:[self.adjacencyLists objectAtIndex:13]];
    
    self.board = [KBoard initWithCapacity:25];
    [self.board replaceObjectAtIndex:7 withObject:cell7];
    [self.board replaceObjectAtIndex:13 withObject:cell13];
    [self setAdjacencyLists];

}


-(void)run
{
    [self setup];
    NSLog(@"\nrun loop begun");
    NSLog(@"\nexecuting moveIt");
    [self moveIt];

}

-(void)setAdjacencyLists
{
    // 5x5 grid. array is 1 offset
    //array[i] is the adjacency list for KBoardCell located at board[i]
    
    // move this into data file
    
    NSArray *adjacencyLists = @[[NSSet set],
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
    
    self.adjacencyLists = adjacencyLists;
    
    // set potential moves - Two spaces diagonally in any direction
    
    NSArray *potentialMoves = @[[NSSet set],
                            [NSSet setWithArray:@[@13]],
                            [NSSet set],
                            [NSSet setWithArray:@[@11,@15]],
                            [NSSet set],
                            [NSSet setWithArray:@[@13]],
                            [NSSet set],
                            [NSSet setWithArray:@[@19]],
                            [NSSet set],
                            [NSSet setWithArray:@[@17]],
                            [NSSet set],
                            [NSSet setWithArray:@[@23]],
                            [NSSet set],
                            [NSSet setWithArray:@[@1,@5,@21,@25]],
                            [NSSet set],
                            [NSSet setWithArray:@[@23]],
                            [NSSet set],
                            [NSSet setWithArray:@[@9]],
                            [NSSet set],
                            [NSSet setWithArray:@[@7]],
                            [NSSet set],
                            [NSSet setWithArray:@[@13]],
                            [NSSet set],
                            [NSSet setWithArray:@[@11,@15]],
                            [NSSet set],
                            [NSSet setWithArray:@[@13]]
                            ];

    self.potentialMovesAdjacencyLists = potentialMoves;
}
-(void)moveIt   //part of test suite
{
    // function used solely for testing
    
    //  pieces have been set up at Board[7] and Board[13]
    // make Piece7 take Piece13, by going to BoardCell19

    // for target = 7, destination = 19
    
    // ******* Do the following actions *****
    
    // check that the move is valid
        //if YES,
            //1)move Piece at BoardCell[target] to BoardCell[destination], with animation
            //2)remove Piece at BoardCell[jumped], with animation
    //    if NO
            // snap piece back into target cell, with animation
    
    
    // how to determine if the move valid?
    //  *********
    
    //  0) the move is an element of potentialMoves Set of lo - two spaces diagonally

    //  1)find the set formed by intersection of the adjacencyList of target and adjacencyList of  destination
    //      If this new set formed has exactly one element, that element is index jumped!!!
    
    // 2) also need Board[jumped] MUST be occupied
    // destination must be in set of allowed destinations
    // Board[jumped] must be occupied
        //  *********
    NSSet *potentialSet = self.potentialMovesAdjacencyLists[7];//index target = 7
    if ([potentialSet member:@19])//index destination = 19
    {
        //compute location of jumped cell, to check to see if it is occupied
        NSSet *targetSet = self.adjacencyLists[7];
        NSSet *destinationSet = self.adjacencyLists[19];
        NSLog(@"\ntargetSet is %@",targetSet);
        NSLog(@"\ndestinationSet is %@",destinationSet);
        
        NSSet *intersectionSet = [targetSet objectsPassingTest:^BOOL(id obj, BOOL *stop) {
            if ([destinationSet member:obj])
            {
                return YES;
            }
            else
            {
                return NO;
            }
        }];
        NSLog(@"\nintersectionSet is %@",intersectionSet); // this set contains one member, index jumped
        
        //now, must send a message to KBoardCell[jumped] to see if it is occupied
        
        if ([(KBoardCell *)self.board[13] isOccupied]) //jumped = 13
        {
            NSLog(@"\nMove is allowed");
        }
        else
        {
            NSLog(@"\nMove is not allowed");
        }
    }
    else
    {
        NSLog(@"not an allowed move");
    }

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
