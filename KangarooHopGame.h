//
//  KangarooHopGame.h
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//
// Board is an array of KBoardCells
// create a KBoardCell class factory to initialize the board.
// only need to do this once


// KBoardCells all have an adjacency list, and a piece

//  KangarooHopGame know how to move KPieces from KBoardCell to KBoardCell, given the adjacencyList for each KBoardCell, and whether the intervening KBoardCell isOccupied.

//Game needs to read file to setup initial configuration


#import <Foundation/Foundation.h>
#import "KBoard.h"
#import "KBoardCell.h"
#import "KPiece.h"

@interface KangarooHopGame : NSObject

@property (strong, nonatomic)KBoard *board;
@property (strong, nonatomic)NSArray *adjacencyLists; //array of NSSets
@property (strong, nonatomic)NSArray *potentialMovesAdjacencyLists; //array of NSSets, two spaces

-(void)setupGameFromBoard:(KBoard*)board;
-(void)run;
-(void)moveIt;
-(void)pause;
-(void)quit;
-(void)setAdjacencyLists;
@end
