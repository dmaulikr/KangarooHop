//
//  KBoardCell.h
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//
// Board is an array of KBoardCells
// create a KBoardCell class factory to initialize the board.
// only need to do this once

// Cells all have an adjacency list, and a piece

// Pieces know how to move from KBoardCell to KBoardcell, given the adjacencylist for each.

#import <Foundation/Foundation.h>
@class KPiece;
@interface KBoardCell : NSObject

@property (strong, nonatomic)KPiece *piece;
@property (strong, nonatomic)NSSet *adjacencyList;
@property (assign, nonatomic, readonly, getter = isOccupied)BOOL occupied;
+(instancetype)initWithPiece:(KPiece*)piece andAdjacencyList:(NSSet*)adjacencyList;
- (void)removePiece;
@end
