//
//  STSectionModel.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STSectionModel.h"

@implementation STSectionModel

@synthesize cells = _cells;
@synthesize header = _header;
@synthesize footer = _footer;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithCells:(NSArray*)cells {
    self = [super init];
    if (self) {
        _cells = cells;
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithHeader:(id)header andFooter:(id)footer cells:(NSArray*)cells {
    self = [super init];
    if (self) {
        _header = header;
        _footer = footer;
        _cells = cells;
    }
    return self;
}


@end
