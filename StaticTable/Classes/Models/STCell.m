//
//  STCell.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STCell.h"

NSString* kCellIdentifier = @"kCellIdentifier";

@implementation STCell

@synthesize accessoryButtonTappedAction = _accessoryButtonTappedAction;
@synthesize didSelectAction = _didSelectAction;
@synthesize inputParams = _inputParams;
@synthesize outputParams = _outputParams;
@synthesize cellClass = _cellClass;
@synthesize key = _key;
@synthesize accessoryType = _accessoryType;
@synthesize selectionStyle = _selectionStyle;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
    self = [super init];
    if (self) {
        _accessoryType = UITableViewCellAccessoryNone;
        _selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithClass:(Class)cellClass key:(NSString*)key {
    self = [self init];
    if (self) {
        _cellClass = cellClass;
        _key = key;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id) cellWithClass:(Class)cellClass key:(NSString*)key params:(NSDictionary*)params {
    STCell* model = [[STCell alloc] initWithClass:cellClass key:key];
    [model setInputParams:params];
    return model;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*) cellIdentifier {
    NSString* identifier = [_inputParams valueForKey:kCellIdentifier];
    if (!identifier) {
        return NSStringFromClass(_cellClass);
    }
    return identifier;
}

@end
