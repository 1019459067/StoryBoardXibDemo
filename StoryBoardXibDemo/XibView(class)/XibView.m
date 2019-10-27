//
//  XibView.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "XibView.h"

@interface XibView ()

@end

@implementation XibView

- (void)awakeFromNib
{
    [super awakeFromNib];
//    TipsView *contentView = (TipsView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
//    if (contentView != nil) {
//        [self addSubview:contentView];
//        contentView.frame = self.bounds;
//    }
//    self.contentLabel = [contentView viewWithTag:100];
}

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    if (self = [super initWithCoder:aDecoder]) {
//        
//    }
//    return self;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
