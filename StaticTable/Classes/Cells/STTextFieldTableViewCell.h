//
//  STTextFieldTableViewCell.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 15.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

extern NSString* kCellTextFieldText;
extern NSString* kCellTextFieldPlaceholder;

@interface STTextFieldTableViewCell : STTableViewCell <UITextFieldDelegate> {
    UITextField* _textField;
}

@property (nonatomic, strong) UITextField* textField;

@end
