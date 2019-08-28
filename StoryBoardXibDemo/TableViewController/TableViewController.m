//
//  TableViewController.m
//  StoryBoardXibDemo
//
//  Created by HN on 2019/8/28.
//  Copyright © 2019 HN. All rights reserved.
//

#import "TableViewController.h"
#import "XibTableViewCell.h"
#import "XibFileTableViewCell.h"

@interface TableViewController ()
@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass(XibTableViewCell.class) bundle:nil] forCellReuseIdentifier:NSStringFromClass(XibTableViewCell.class)];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass(XibFileTableViewCell.class) bundle:nil] forCellReuseIdentifier:NSStringFromClass(XibFileTableViewCell.class)];

    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self getData];
}
- (void)getData
{
    self.dataArray = @[@"运营商推出“流量不限量”套餐后，人们在使用手机流量时不再像过去那样“小心翼翼”。地铁里、公交上，“低头族”捧着手机追热门网剧、刷小视频的场景几乎随处可见。",
                       @"当手机流量不再那么金贵时，却又出现了新的质疑。近期，有网民反映4G网速越来越慢。甚至有传言称，4G网络速度下降，可能与5G的建设推广有关。",
                       @"一时间，“4G降速”成为了网络热议的焦点话题。近日，工业和信息化部新闻发言人、信息通信发展司司长闻库在接受媒体集体采访时指出，工业和信息化部之前从未，将来也不会要求相关运营商降低或限制4G网络速率。工业和信息化部将进一步加强对运营商的监管，切实维护广大消费者的合法权益。",
                       @"相关网络传闻称，“经网友实测，理论上4G网络速度应该是100Mbps，折合为12.5M/s，但实际速度只有1.51M/s，整整差了11M/s”。",
                       @"在北京理工大学计算机网络及对抗技术研究所所长闫怀志看来，网友实测的样本数量有限，要了解整体4G网络速率的实际情况，需要大范围监测样本的数据。",
                       @"此前，工业和信息化部指导中国信息通信研究院搭建了覆盖全国31个省(区、市)的监测平台，通过技术手段监测4G网络速率，目前每季度监测样本数已超过7100万。",
                       @"闻库介绍，来自上述平台的监测数据显示，近年来全国4G平均下载速率持续稳步提升，2019年7月达23.78Mbps，整体上未出现速率明显下降的情况。",
                       @"“从客观上看，4G网速并没有变慢，而且网络速度是一直在提升的。”天津大学计算机科学与技术学院教授王晓飞在接受科技日报记者采访时说道。",
                       @"一、同意设立中国（山东）自由贸易试验区、中国（江苏）自由贸易试验区、中国（广西）自由贸易试验区、中国（河北）自由贸易试验区、中国（云南）自由贸易试验区、中国（黑龙江）自由贸易试验区。",
                       @"二、中国（山东）自由贸易试验区涵盖济南片区、青岛片区、烟台片区，总面积119.98平方公里（具体四至范围见附件，下同）；中国（江苏）自由贸易试验区涵盖南京片区、苏州片区、连云港片区，总面积119.97平方公里；中国（广西）自由贸易试验区涵盖南宁片区、钦州港片区、崇左片区，总面积119.99平方公里；中国（河北）自由贸易试验区涵盖雄安片区、正定片区、曹妃甸片区、大兴机场片区，总面积119.97平方公里；中国（云南）自由贸易试验区涵盖昆明片区、红河片区、德宏片区，总面积119.86平方公里；中国（黑龙江）自由贸易试验区涵盖哈尔滨片区、黑河片区、绥芬河片区，总面积119.85平方公里。上述6个新设自由贸易试验区地块的落桩定界工作，经商务部、自然资源部审核验收后报国务院备案，由商务部、自然资源部负责发布。",
                       @"三、上述6个新设自由贸易试验区内的海关特殊监管区域的实施范围和税收政策适用范围维持不变。",
                       @"四、山东省、江苏省、广西壮族自治区、河北省、云南省、黑龙江省人民政府和商务部要会同有关部门做好新设自由贸易试验区总体方案的组织实施工作。",];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row %2 == 0) {
        XibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(XibTableViewCell.class)];
        if (!cell) {
            cell =  [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(XibTableViewCell.class) owner:self options:nil].firstObject;
        }
        cell.contentLabel = [cell viewWithTag:100];
        cell.contentLabel.text = self.dataArray[indexPath.row];
        return cell;
    } else {
        XibFileTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(XibFileTableViewCell.class)];
        if (!cell) {
            cell =  [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(XibFileTableViewCell.class) owner:self options:nil].firstObject;
        }
        cell.contentLabel = [cell viewWithTag:100];
        cell.contentLabel.text = self.dataArray[indexPath.row];
        return cell;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
