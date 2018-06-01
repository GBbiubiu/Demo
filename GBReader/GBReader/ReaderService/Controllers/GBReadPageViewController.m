//
//  GBReadPageViewController.m
//  GBReader
//
//  Created by youguobiao on 2018/4/24.
//  Copyright © 2018年 youguobiao. All rights reserved.
//

#import "GBReadPageViewController.h"

#define kYFontSizeMax 25
#define kYFontSizeMin 13

#define kYLineSpacingSparse 12.0
#define kYLineSpacingNormal 8.0
#define kYLineSpacingCompact 4.0

#define kYReaderLeftSpace 20.0
#define kYReaderRightSpace 20.0
#define kYReaderTopSpace 40.0
#define kYReaderBottomSpace 40.0

@interface GBReadPageViewController ()

@property (nonatomic, strong) UIImageView *themeImageView;
@property (nonatomic, strong) UILabel *titelLabel;

@end

@implementation GBReadPageViewController

+(GBReadPageViewController *)creatWithIndex:(NSInteger)index {
    GBReadPageViewController * con = [[GBReadPageViewController alloc]init];
    con.indexLabel = [[UILabel alloc]initWithFrame:CGRectMake(110, 200, 100, 30)];
    con.indexLabel.text = [NSString stringWithFormat:@"第%ld页",(long)index];
    [con.view addSubview:con.indexLabel];
    return con;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.themeImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UILabel *)titelLabel {
    if (!_titelLabel) {
//        _titelLabel = [[UILabel alloc] initWithFrame:CGRectMake(kYReaderLeftSpace, 0, kScreenWidth - kYReaderLeftSpace *2 , 35)]
    }
    return _titelLabel;
}

- (UIImageView *)themeImageView {
    if (!_themeImageView) {
        _themeImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
        _themeImageView.image = [UIImage imageNamed:@"sheepskin_mode_bg"];
    }
    return _themeImageView;
}

@end
