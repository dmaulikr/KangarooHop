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
    NSLog(@"\nrun loop begun");
    NSLog(@"\nexecuting moveIt");
    [self moveIt];

}

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
-(void)moveIt   //part of test suite
{
    //  pieces have been set up at Board[7] and Board[13]
    // make Piece7 take Piece13, by going to BoardCell19

    // for target = 7, destination = 19
    // I am given target Board index[target] and Destination Board index[destination]
    
    // from that, I can reach into the contents of Board[target] and Board[destination]
    
    // ******* Do the following actions *****
    
    //0) check that the move is valid
    //1) find the cell location of the BoardCell that is jumped, Board[jumped]
    //2)move Piece at BoardCell[target] to BoardCell[destination]
    //3)remove Piece at BoardCell[jumped]
    
    
    // when is the move valid?
    //Move is valid when there is exactly one piece P located at the BoardCell at Board[jumped]
    //  such that
    //  1)AdjacencyList at index destination
    //     has exactly one element in common with AdjacencyList at index jumped

    // ie, find index jumped such that
    // jumped is a member of the adjacencylist of index target
    // ****** and
    // jumped is a member of the adjacencyList of index destination
    
    // ie.,
    // find the set formed by intersection of the adjacencyList of target and adjacencyList of index destination
    // If this new set formed has exactly one element, that element is index jumped!!!
    
    NSSet *targetSet = self.allAdjacencyLists[7];
    NSSet *destinationSet = self.allAdjacencyLists[19];
    
    NSLog(@"\ntargetSet is%@",targetSet);
    NSLog(@"\ndestinationSet is%@",destinationSet);
    
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
    NSLog(@"\nintersectionSet is%@",intersectionSet);
    
    // can use the following block method
    // or, can also loop through the objects in one set and test
    // to see if they are members of another set,
    //then put the results in a set.
    
    
//member:
//    Determines whether the set contains an object equal to a given object, and returns that object if it is present.
//        
//        - (id)member:(id)object
//        Parameters
//        object
//        The object for which to test for membership of the set.
//            Return Value
//            If the set contains an object equal to object (as determined by isEqual:) then that object (typically this will be object), otherwise nil.

    //objectsPassingTest:
//    Returns a set of object that pass a test in a given Block.
//    
//    - (NSSet *)objectsPassingTest:(BOOL (^)(id obj, BOOL *stop))predicate
//    Parameters
//    predicate
//    The block to apply to elements in the array.
//    The block takes three arguments:
//    obj
//    The element in the set.
//    stop
//    A reference to a Boolean value. The block can set the value to YES to stop further processing of the set. The stop argument is an out-only argument. You should only ever set this Boolean to YES within the Block.
//    The Block returns a Boolean value that indicates whether obj passed the test.
//    Return Value
//    An NSSet containing objects that pass the test.
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
