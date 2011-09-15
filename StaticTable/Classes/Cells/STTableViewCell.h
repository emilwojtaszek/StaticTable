//
//  STTableViewCell.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol STTableViewCellDataSource <NSObject>
- (UITableViewCellStyle)style;
@end

@interface STTableViewCell : UITableViewCell <STTableViewCellDataSource> {

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
