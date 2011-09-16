//
//  STTextFieldTableViewCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 15.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STTextFieldTableViewCell.h"

@implementation STTextFieldTableViewCell

//NSString* kCellTextFieldText = @"kCellTextFieldText";
//NSString* kCellTextFieldPlaceholder = @"kCellTextFieldPlaceholder";

@synthesize textField = _textField;

#pragma mark -
#pragma mark Class methods

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:[self style] reuseIdentifier:reuseIdentifier];
    if (self) {
        _textField = [[UITextField alloc] init];
        _textField.delegate = self;
        [self.contentView addSubview:_textField];
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
- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect bounds = self.contentView.bounds;
    
    CGRect labelFrame = self.textLabel.frame;
    CGRect textFieldFrame = CGRectMake(CGRectGetMaxX(labelFrame) + 15.0f, 0.0, CGRectGetWidth(bounds) - 15.0f - CGRectGetMaxX(labelFrame), CGRectGetHeight(bounds));
    
    _textField.frame = textFieldFrame;
}

#pragma mark -
#pragma mark STTableViewCellDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) configureCellWithParams:(NSDictionary*)params {
    [super configureCellWithParams:params];
//    _textField.text = [params valueForKey:kCellTextFieldText];
//    _textField.placeholder = [params valueForKey:kCellTextFieldPlaceholder];
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCellStyle)style {
    return UITableViewCellStyleDefault;
}

@end
