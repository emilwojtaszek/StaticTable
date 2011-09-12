//
//  STTableViewController.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

// Frameworks
#import <UIKit/UIKit.h>

// Models
#import "STCellModel.h"
#import "STSectionModel.h"

@interface STTableViewController : UITableViewController {

    NSMutableArray* _modelStructure;
}

@property (nonatomic, strong, readonly) NSMutableArray* modelStructure;

- (STCellModel*) cellModelAtIndexPath:(NSIndexPath*)indexPath;

@end


@interface STTableViewController (Creation)

/*
 * Override this to create tableView structure.
 * This method is fire in viewDidLoad. Don't fire this method directly.
 * Default return nil.
 */

- (NSMutableArray*) loadStructure;


@end
