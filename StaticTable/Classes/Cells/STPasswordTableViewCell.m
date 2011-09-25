//
//  STPasswordTableViewCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 25.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STPasswordTableViewCell.h"

@implementation STPasswordTableViewCell

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _textField.secureTextEntry = YES;
    }
    return self;
}

@end
