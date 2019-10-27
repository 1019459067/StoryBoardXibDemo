//
//  ViewController.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "ViewController.h"
#import "TipsView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()
@property (weak, nonatomic) IBOutlet TipsView *tips;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nextBtnTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tipsHeight;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str = @"发生在香港的游行示威和暴力活动已经持续了两个多月，香港的法治社会秩序、经济民生和国际形象都受到了严重冲击，没有人比包括香港市民，包括香港市民在内的中国人民更关心香港的繁荣稳定，我们自己的事情我们会处理好，请七国集团成员不要再居心叵测、多管闲事、图谋不轨。";
    self.tips.contentLabel.text = str;
    
    
    CGSize size = [str boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-40-40-60-20, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:self.tips.contentLabel.font.pointSize]}
                                          context:nil].size;
    self.tipsHeight.constant = size.height+20;
    
    self.nextBtnTop.constant = 100;
    
    self.slider.frame = CGRectMake(0, 0, 333, 0);

}
@end
