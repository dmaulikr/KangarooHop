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


#import <Foundation/Foundation.h>
#import "KBoard.h"
#import "KBoardCell.h"
#import "KPiece.h"
@interface KangarooHopGame : NSObject
@property (strong, nonatomic)KBoard *board;

@end