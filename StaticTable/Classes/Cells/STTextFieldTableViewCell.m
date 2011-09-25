//
//  STTextFieldTableViewCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 15.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STTextFieldTableViewCell.h"

@interface STTextFieldTableViewCell (Private)
- (void) setupTextFieldForCellStyle:(UITableViewCellStyle)style;
@end

@implementation STTextFieldTableViewCell

NSString* kCellTextFieldText = @"kCellTextFieldText";
NSString* kCellTextFieldPlaceholder = @"kCellTextFieldPlaceholder";

@synthesize textField = _textField;

#pragma mark -
#pragma mark Private

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) setupTextFieldForCellStyle:(UITableViewCellStyle)style {
    switch (style) {
        case UITableViewCellStyleValue1: {
            [_textField setTextColor:[UIColor tableViewCellValue1BlueColor]];
            [_textField setTextAlignment: UITextAlignmentRight];
            break;
        }
        case UITableViewCellStyleValue2: {
            [_textField setTextColor:[UIColor tableViewCellValue2BlueColor]];
            [_textField setTextAlignment: UITextAlignmentLeft];
            break;
        }
        default: {
            [_textField setTextColor:[UIColor blackColor]];
            [_textField setTextAlignment: UITextAlignmentLeft];
            break;
        }
    }
}

#pragma mark -
#pragma mark Class methods

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _textField = [[UITextField alloc] init];
        [_textField setDelegate: self];
        [_textField setAutocapitalizationType:UITextAutocapitalizationTypeNone];
        [_textField setAutocorrectionType:UITextAutocorrectionTypeNo];
        [self setupTextFieldForCellStyle:style];
        [self.contentView addSubview:_textField];
        [self.textLabel setBackgroundColor:[UIColor clearColor]];
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
    
    CGSize textSize = [self.textLabel.text sizeWithFont:self.textLabel.font forWidth:bounds.size.width/2.0f lineBreakMode:UILineBreakModeTailTruncation];
    CGRect newLabelFrame = CGRectMake(CGRectGetMinX(labelFrame), CGRectGetMinY(labelFrame), textSize.width, CGRectGetHeight(labelFrame));
    CGRect textFieldFrame = CGRectMake(CGRectGetMaxX(newLabelFrame) + 10.0f, CGRectGetMidY(bounds) - (textSize.height)/2.0f, CGRectGetWidth(bounds) - 20.0f - CGRectGetMaxX(newLabelFrame), (textSize.height));

    _textField.frame = textFieldFrame;
}

#pragma mark -
#pragma mark STTableViewCellDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) configureCellWithParams:(NSDictionary*)params {
    [super configureCellWithParams:params];
    _textField.text = [params valueForKey:kCellTextFieldText];
    _textField.placeholder = [params valueForKey:kCellTextFieldPlaceholder];
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCellStyle)style {
    return UITableViewCellStyleValue1;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (UIResponder*) defualtResponder {
    return _textField;
}

#pragma mark -
#pragma mark STTableViewCellDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSDictionary* dict = [NSDictionary dictionaryWithObject:textField.text forKey:@"kTextFieldText"];
    [_model setOutputParams:dict];
    return YES;
}

@end
