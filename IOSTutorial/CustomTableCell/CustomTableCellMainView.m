//
//  CustomTableCellMainView.m
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "CustomTableCellMainView.h"
#import "CustomTableCell.h"

@interface CustomTableCellMainView ()

@end

@implementation CustomTableCellMainView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"CustomTableCell";
    
    /*
     * 참고로 delegate와 dataSource는 
     * XIB에서 이미 File's owner로 연결해 둔 상태임.
     * 코드로 구현할때는 그냥
     * _tableView.delegate = self;
     * _tableView.dataSource = self;
     * 이런 식으로 해도 되고...
     */
}

- (void)viewDidUnload
{
    [_tableView release];
    _tableView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc 
{
    [_tableView release];
    [super dealloc];
}

#pragma mark - UITableViewDelegate

// 셀 높이를 알려주기 위한 곳
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // CustomTAbleCell 내부에서 height를 30으로
    // 고정시켜 놨음. 그래서 30을 리턴함.
    // 만약 각 셀 마다 높이가 다르다면 row별로
    // 높이를 각각 알려줘야 된다는 점을 기억할 것.
    return 30;
}

#pragma mark - UITableViewDataSourceDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 캐싱용 ID. 그냥 이렇게 쓰는게 메모리 이슈도 있고 성능 이슈도 있고
    // 하여간 좋다니깐 -_-;;;
    static NSString *cellId = @"menucell";
    
    // UITableViewCell을 상속받는 클래스를 사용한다.
    // 만약 캐싱된 뷰가 있으면 가져와서 사용한다.
    CustomTableCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellId];
    
    // 캐싱된 뷰가 없다면 새로 만들어야지.
    if (cell == nil) {
        // CustomTableCell을 initWithStyle로 초기화 시켰는데
        // 딱히 의미는 없음. 그냥 reuseIdentifier가 필요해서 쓰는 것임
        // 실제로 CustomTableCell의 initWithStyle은
        // 그냥 뷰를 만드는 부분임.
        cell = [[[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId] autorelease];
    }
    
    // 만들어진, 혹은 캐싱에서 읽어온 뷰에 데이터 넣기.
    // 아이콘 크기가 딱 맞지 않아서 좀 보기는 안좋지만...;;;;
    if (indexPath.row % 2 == 0) {
        cell.customImageView.image = [UIImage imageNamed:@"icon2.png"];
        cell.customTextLabel.text = @"짝수 셀";
    }
    else {
        cell.customImageView.image = [UIImage imageNamed:@"icon1.png"];
        cell.customTextLabel.text = @"홀수 셀";
    }
    
    // 이 셀을 받아랏!
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // 예제니깐 셀은 대충 10개만 있는 걸로...
    return 10;
}

@end
