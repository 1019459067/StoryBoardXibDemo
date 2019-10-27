//
//  ViewController.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "ViewController.h"
#import "TipsView.h"
#import "XibView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

NSString *str = @"发生在香港的游行示威和暴力活动已经持续了两个多月，香港的法治社会秩序、经济民生和国际形象都受到了严重冲击，没有人比包括香港市民，包括香港市民在内的中国人民更关心香港的繁荣稳定，我们自己的事情我们会处理好，请七国集团成员不要再居心叵测、多管闲事、图谋不轨。";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet TipsView *tipsView;
@property (weak, nonatomic) IBOutlet XibView *xibView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tipsConstraintH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *xibViewConstraintH;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateTipsView];
    [self updateXibView];
    
}

- (void)updateXibView
{
    self.xibView.contentLabel.text = str;

    CGSize size = [str boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-20*2-2*20-60, MAXFLOAT)
                                    options:1
                                 attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:self.xibView.contentLabel.font.pointSize]}
                                    context:nil].size;
    self.xibViewConstraintH.constant = size.height+20+30;
}

- (void)updateTipsView
{
    self.tipsView.contentLabel.text = str;
    
    CGSize size = [str boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-20*2-2*20-60, MAXFLOAT)
                                    options:1
                                 attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:self.tipsView.contentLabel.font.pointSize]}
                                    context:nil].size;
    self.tipsConstraintH.constant = size.height+20+30;
}
@end
