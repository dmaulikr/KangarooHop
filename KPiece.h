//
//  KPiece.h
//  KangarooHop
//
//  Created by Sean Reed on 9/10/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KPiece : NSObject
@property (copy, nonatomic)NSString *name;
@property (strong, nonatomic)UIImage *image;
-(instancetype)initWithName:(NSString*)name andImageName:(NSString*)imageName;
+(instancetype)new;

@end
