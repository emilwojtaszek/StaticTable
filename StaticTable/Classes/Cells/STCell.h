//
//  STCell.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol STCellDataSource <NSObject>
- (UITableViewCellStyle)style;
@end

@interface STCell : UITableViewCell <STCellDataSource> {

}

/*
 * Init methods
 */
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;

/*
 * Other methods
 */
- (void) fillDataWithParams:(NSDictionary*)params;

@end
