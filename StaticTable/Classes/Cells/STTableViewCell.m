//
//  STTableViewCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STTableViewCell.h"

@implementation STTableViewCell

@synthesize model = _model;

NSString* kCellText = @"kCellText";
NSString* kCellDetailText = @"kCellDetailText";

#pragma mark -
#pragma mark Class methods

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [self initWithStyle:[self style] reuseIdentifier:reuseIdentifier];
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

#pragma mark -
#pragma mark STTableViewCellDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) configureCellWithParams:(NSDictionary*)params {
    self.textLabel.text = [params valueForKey:kCellText];
    self.detailTextLabel.text = [params valueForKey:kCellDetailText];
    
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCellStyle)style {
    return UITableViewCellStyleDefault;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (UIResponder*) defualtResponder {
    return nil;
}

@end
