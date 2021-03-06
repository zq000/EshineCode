//
//  MMRankingTimeFooterView.m
//  MicroMannage
//
//  Created by 倪望龙 on 2017/3/8.
//  Copyright © 2017年 xunyijia. All rights reserved.
//

#import "MMRankingTimeFooterView.h"
@interface MMRankingTimeFooterView()
@property(nonatomic,strong)UILabel *LableIndex;
@property(nonatomic,strong)UIImageView *headImageView;
@property(nonatomic,strong)UILabel *lableName;
@property(nonatomic,strong)UILabel *lableTime;
@end
@implementation MMRankingTimeFooterView

-(UILabel *)LableIndex{
    if(_LableIndex == nil){
        _LableIndex = [UILabel new];
        [_LableIndex setFont:[UIFont systemFontOfSize:15.0f]];
        [_LableIndex setTextColor:[UIColor whiteColor]];
        _LableIndex.text = @"我";
    }
    return _LableIndex;
}

-(UIImageView *)headImageView{
    if(_headImageView == nil){
        _headImageView = [UIImageView new];
        _headImageView.backgroundColor = [UIColor redColor];
        _headImageView.layer.cornerRadius = 16.0f;
        _headImageView.layer.masksToBounds = YES;
    }
    return _headImageView;
}

-(UILabel *)lableName{
    if(_lableName == nil){
        _lableName = [UILabel new];
        [_lableName setTextColor:[UIColor whiteColor]];
        [_lableName setFont:[UIFont systemFontOfSize:14.0f]];
        _lableName.text = @"123名";
    }
    return _lableName;
}

-(UILabel *)lableTime{
    if(_lableTime == nil){
        _lableTime = [UILabel new];
        [_lableTime setTextColor:[UIColor whiteColor]];
        [_lableTime setFont:[UIFont systemFontOfSize:14.0f]];
        _lableTime.text = @"活跃时长: 1小时";
        [_lableTime setTextAlignment:NSTextAlignmentRight];
    }
    return _lableTime;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self TFSetUpSubviews];
    }
    return self;
}

-(void)TFSetUpSubviews{
    self.backgroundColor = HEXCOLOR(kBlueColor);
    [self addSubview:self.LableIndex];
    [self addSubview:self.headImageView];
    [self addSubview:self.lableName];
    [self addSubview:self.lableTime];
    
    [_LableIndex mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).with.offset(18.0f);
        make.width.mas_equalTo(17.0f);
    }];
    [_headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.left.mas_equalTo(_LableIndex.mas_right).with.offset(6.0f);
        make.size.mas_equalTo(CGSizeMake(32.0f, 32.0f));
    }];
    
    [_lableName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.left.mas_equalTo(_headImageView.mas_right).with.offset(10.0f);
        make.width.mas_equalTo(100.0f);
    }];
    
    [_lableTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(self).with.offset(-19.0f);
        make.left.mas_equalTo(self.lableName.mas_right).with.offset(10.0f);
    }];
    
    

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
