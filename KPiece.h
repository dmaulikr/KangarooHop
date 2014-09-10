//
//  KPiece.h
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
@class KBoardCell;

@interface KPiece : NSObject

@property (copy, nonatomic)NSString *name;
@property (strong, nonatomic)UIImage *image;
+(instancetype)newKangarooHopPiece;

@end
