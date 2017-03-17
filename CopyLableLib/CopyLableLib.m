//
//  CopyLableLib.m
//  CopyLableLib
//
//  Created by uyi on 2017/3/17.
//  Copyright © 2017年 GCHShoppingGuide. All rights reserved.
//

#import "CopyLableLib.h"

@implementation CopyLableLib

- (void)setTextAlignmentVertical:(TextAlignmentVertical)textAlignmentVertical
{
    _textAlignmentVertical = textAlignmentVertical;
    [self setNeedsDisplay];
}

-(CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.textAlignmentVertical) {
        case TextAlignmentVerticalTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case TextAlignmentVerticalCenter:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
            break;
        case TextAlignmentVerticalBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

@end
