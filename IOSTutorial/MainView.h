//
//  MainView.h
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    NSMutableArray *_menu;
    NSMutableArray *_details;
    IBOutlet UITableView *_tableView;
}

@end
