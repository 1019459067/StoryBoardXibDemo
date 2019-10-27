//
//  TipsLabel.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "TipsView.h"

@interface TipsView ()

@end

@implementation TipsView

- (void)awakeFromNib
{
    [super awakeFromNib];
    TipsView *contentView = (TipsView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    if (contentView != nil) {
        [self addSubview:contentView];
        contentView.frame = self.bounds;
    }
    self.contentLabel = [contentView viewWithTag:100];
}

@end
