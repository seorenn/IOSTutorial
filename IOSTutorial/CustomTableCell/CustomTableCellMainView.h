//
//  CustomTableCellMainView.h
//  IOSTutorial
//
//  Created by Heeseung Seo on 12. 4. 17..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCellMainView : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    IBOutlet UITableView *_tableView;
}

@end
