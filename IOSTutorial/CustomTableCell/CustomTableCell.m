//
//  CustomTableCell.m
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

/*
 * UITableViewCell은 특별한 것 없이 그냥 UIView를 상속받았으니
 * UIView랑 비슷하게 뷰를 꾸밀 수 있다.
 * 물론 셀 전용 API도 있긴 하지만 왠만하면 쓸 일은 없음.
 */

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize customImageView = _customImageView;
@synthesize customTextLabel = _customTextLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        // 화면 크기 얻기
        CGRect frame = [[UIScreen mainScreen] bounds];
        
        // 높이는 대충 30으로 잡음.
        self.frame = CGRectMake(0, 0, frame.size.width, 30);
        
        // 이미지뷰 붙이기
        _customImageView = [[UIImageView alloc] init];
        _customImageView.frame = CGRectMake(0, 0, 30, 30);
        [self addSubview:_customImageView];
        
        // 라벨 붙이기
        _customTextLabel = [[UILabel alloc] init];
        _customTextLabel.frame = CGRectMake(40, 0, frame.size.width - 40, 30);
        [self addSubview:_customTextLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [_customImageView release];
    [_customTextLabel release];
    
    [super dealloc];
}

@end
