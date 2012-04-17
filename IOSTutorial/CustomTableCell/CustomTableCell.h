//
//  CustomTableCell.h
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell {
    // 원래는 custom이라는게 안붙어 있었는데
    // UITableViewCell에 비슷한 프로퍼티가 이미 정의되어 있음.
    // 여기서는 완전히 커스텀 한다는 의도 상 대충 custom을 붙여서 구분함.
    UIImageView *_customImageView;
    UILabel *_customTextLabel;
}

// 프로퍼티로 서브뷰를 읽을 수 있게 한 이유는
// 셀 외부에서 서브뷰에 데이터를 직접 넣게 하기 위함인데
// 꼭 이 방법을 써야 할 필요는 없음.
// 원하는 대로 클래스화 해서 API를 만드는게 더 좋은 디자인이겠지...
@property (nonatomic, readonly) UIImageView *customImageView;
@property (nonatomic, readonly) UILabel *customTextLabel;

@end
