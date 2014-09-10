//
//  KBoardCell.h
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//
// KBoards contain KBoardCells. KBoardCells contain 0 or 1 KPieces

#import <Foundation/Foundation.h>
@class KPiece;
@interface KBoardCell : NSObject
@property (strong, nonatomic)KPiece *piece;
@property (assign, nonatomic, readonly, getter = isOccupied)BOOL occupied;
@end
