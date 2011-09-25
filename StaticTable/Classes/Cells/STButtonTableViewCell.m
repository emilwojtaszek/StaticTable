//
//  STButtonTableViewCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 25.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STButtonTableViewCell.h"

NSString* kCellButtonTitle = @"kCellButtonTitle";

@implementation STButtonTableViewCell

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [self initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textLabel.textAlignment = UITextAlignmentCenter;
        [self.textLabel setTextColor:[UIColor tableViewCellValue1BlueColor]];
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews {
    [super layoutSubviews];
}

#pragma mark -
#pragma mark STTableViewCellDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) configureCellWithParams:(NSDictionary*)params {
    self.textLabel.text = [params valueForKey:kCellButtonTitle];
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCellStyle)style {
    return UITableViewCellStyleDefault;
}

@end
