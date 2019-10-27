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

NSString *str = @"发生在香港的游行示威和暴力活动已经持续了多月，香港的法治社会秩序、经济民生和国际形象都受到了严重冲击，没有人比包括香港市民，包括香港市民在内的中国人民更关心香港的繁荣稳定。";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet TipsView *tipsView;
@property (weak, nonatomic) IBOutlet XibView *xibView;
@property (weak, nonatomic) IBOutlet UILabel *onlyLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tipsConstraintH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onlyLabelConstraintH;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *xibViewConstraintH;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateView:self.tipsView.contentLabel
              string:str
               width:SCREEN_WIDTH-20*2-2*20-60-20-25
          constraint:self.tipsConstraintH];
    
    [self updateView:self.onlyLabel
              string:str
               width:SCREEN_WIDTH-20*2
          constraint:self.onlyLabelConstraintH];
    
    [self updateView:self.xibView.contentLabel
              string:str
               width:SCREEN_WIDTH-20*2-2*20-60-20-25
          constraint:self.xibViewConstraintH];
}

- (void)updateView:(UILabel *)label
            string:(NSString *)string
             width:(CGFloat)width
        constraint:(NSLayoutConstraint *)constraint
{
    label.text = string;
    
    CGSize size = [label.text boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                           options:1
                                        attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:label.font.pointSize]}
                                           context:nil].size;
    constraint.constant = size.height+label.font.pointSize;
}

@end
