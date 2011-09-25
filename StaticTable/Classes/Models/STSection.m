//
//  STSection.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "STSection.h"

@implementation STSection

@synthesize cells = _cells;
@synthesize header = _header;
@synthesize footer = _footer;

//////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id) sectionWithCells:(id)cell, ... {
    va_list args;
    va_start(args, cell);
    NSMutableArray* cells = [NSMutableArray array];
    
    for (id item = cell; item != nil; item = va_arg(args, id)) {
        [cells addObject:item];
    }
    
    va_end(args);
    
    return [[STSection alloc] initWithCells: cells];
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id) sectionWithHeader:(id)header andFooter:(id)footer cells:(id)cell, ... {
    va_list args;
    va_start(args, cell);
    NSMutableArray* cells = [NSMutableArray array];
    
    for (id item = cell; item != nil; item = va_arg(args, id)) {
        [cells addObject:item];
    }
    
    va_end(args);
    
    return [[STSection alloc] initWithHeader:header andFooter:footer cells:cells];
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithCells:(NSArray*)cells {
    self = [super init];
    if (self) {
        _cells = cells;
    }
    return self;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) initWithHeader:(id)header andFooter:(id)footer cells:(NSArray*)cells {
    self = [super init];
    if (self) {
        _cells = cells;
        _header = header;
        _footer = footer;
    }
    return self;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
- (id) cellForKey:(NSString*)key {
    __unsafe_unretained __block id item = nil;

    [_cells enumerateObjectsUsingBlock:^(id obj, NSUInteger idx __unused, BOOL *stop) {
        NSString* cellKey = [obj valueForKey:@"key"];
        if ([cellKey isEqualToString:key]) {
            item = obj;
        }
    }];
    
    return item;
}

@end
