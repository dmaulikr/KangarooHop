//
//  KBoard.h
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//
// Board is an array of KBoardCells
// create a KBoardCell class factory to initialize the board.
// only need to do this once

// Cells all have an adjacency list, and a piece
// Pieces know how to move from cell to cell, given the adjacency list for each.


#import <Foundation/Foundation.h>


@interface KBoard : NSMutableArray //ofKBoardCells


+(instancetype)initWithCapacity:(NSUInteger)numItems;
+(instancetype)initWithArrayOfKBoardCells:(NSArray*)array; //array of KBoardCells
+(instancetype)initWithData:(NSData *)data;

@end
