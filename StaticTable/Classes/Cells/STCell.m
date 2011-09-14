//
//  STCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STCell.h"

// Models
#import "STCellModel.h"

@implementation STCell

#pragma mark -
#pragma mark Class methods

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:[self style] reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) fillDataWithParams:(NSDictionary*)params {
    self.textLabel.text = [params valueForKey:kCellText];
    self.detailTextLabel.text = [params valueForKey:kCellDetailText];
}

#pragma mark -
#pragma mark STCellDataSource


////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCellStyle)style {
    return UITableViewCellStyleDefault;
}
@end
