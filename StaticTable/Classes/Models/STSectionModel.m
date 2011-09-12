//
//  STSectionModel.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STSectionModel.h"

@implementation STSectionModel

@synthesize header = header;
@synthesize footer = footer;
@synthesize cells = _cells;

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
    self = [super init];
    if (self) {
        _cells = [[NSMutableArray alloc] init];
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void) addCellModel:(id)cell {
    [_cells addObject: cell];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) cellAtIndex:(NSInteger)index {
    [_cells objectAtIndex:index];
}

@end
