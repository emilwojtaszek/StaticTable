//
//  STTableViewCell.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

extern NSString* kCellText;
extern NSString* kCellDetailText;

@protocol STTableViewCellDelegate <NSObject>
@required
- (UITableViewCellStyle)style;
- (void) configureCellWithParams:(NSDictionary*)params;
- (UIResponder*) defualtResponder;
@end

@interface STTableViewCell : UITableViewCell <STTableViewCellDelegate> {
    STCell* _model;
}

@property (nonatomic, strong) STCell* model;

/*
 * Init methods
 */
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end
