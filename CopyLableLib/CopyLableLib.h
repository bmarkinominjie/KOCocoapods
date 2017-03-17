//
//  CopyLableLib.h
//  CopyLableLib
//
//  Created by uyi on 2017/3/17.
//  Copyright © 2017年 GCHShoppingGuide. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface CopyLableLib : UILabel

typedef enum
{
    TextAlignmentVerticalTop = 0, // default
    TextAlignmentVerticalCenter,
    TextAlignmentVerticalBottom,
} TextAlignmentVertical;

@property (nonatomic) TextAlignmentVertical textAlignmentVertical;

- (void)setTextAlignmentVertical:(TextAlignmentVertical)textAlignmentVertical;

@end
