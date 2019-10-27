//
//  XibView.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "XibView.h"

@interface XibView ()
@property (weak, nonatomic) IBOutlet UIView *mainView;
@end

@implementation XibView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.mainView = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
        self.mainView.frame = self.bounds;
        [self addSubview:self.mainView];
    }
    return self;
}

@end
