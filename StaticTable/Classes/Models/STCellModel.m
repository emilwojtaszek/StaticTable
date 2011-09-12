//
//  STCellModel.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STCellModel.h"

@implementation STCellModel

@synthesize accessoryButtonTappedAction = _accessoryButtonTappedAction;
@synthesize didSelectAction = _didSelectAction;
@synthesize cell = _cell;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWitSectionIndex:(NSInteger)index {
    self = [super init];
    if (self) {
        NSString* reuseIdentifier = [self reuseIdentifier];
        _cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    return self;
}

@end

@implementation STCellModel (Configuration)

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*) reuseIdentifier {
    return NSStringFromClass([self class]);
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat) heightOfCell {
    return 44.0f;
}

@end
