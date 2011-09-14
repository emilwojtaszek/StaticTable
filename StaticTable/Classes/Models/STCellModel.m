//
//  STCellModel.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STCellModel.h"

NSString* kCellText = @"kCellText";
NSString* kCellDetailText = @"kCellDetailText";
NSString* kCellIdentifier = @"kCellIdentifier";

@implementation STCellModel

@synthesize accessoryButtonTappedAction = _accessoryButtonTappedAction;
@synthesize didSelectAction = _didSelectAction;
@synthesize params = _params;
@synthesize cellClass = _cellClass;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithClass:(Class)cellClass {
    self = [super init];
    if (self) {
        _cellClass = cellClass;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id) cellWithClass:(Class)cellClass andParams:(NSDictionary*)dict {
    STCellModel* model = [[STCellModel alloc] initWithClass:cellClass];
    [model setParams:dict];
    return model;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*) cellIdentifier {
    NSString* identifier = [_params valueForKey:kCellIdentifier];
    if (!identifier) {
        return NSStringFromClass(_cellClass);
    }
    return identifier;
}

@end
