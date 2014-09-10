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

// KBoardCells all have an adjacency list, and they have 0 or 1 KPieces associated with them as a property

// KPieces know how to move from KBoardCell to KBoardCell, given the adjacencylist for each. They set their pointer in KBoardCell to nil if they move to a different cell or are removed from the board


#import <Foundation/Foundation.h>
@class KBoardCell;

@interface KPiece : NSObject

@property (copy, nonatomic)NSString *name;
@property (strong, nonatomic)UIImage *image;
+(instancetype)newKangarooHopPiece;

@end
