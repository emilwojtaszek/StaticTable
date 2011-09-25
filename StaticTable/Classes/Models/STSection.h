//
//  STSection.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

@interface STSection : NSObject {

@protected
    id _header;
    id _footer;
    
    NSArray* _cells;
}

@property (nonatomic, strong, readonly) id header;
@property (nonatomic, strong, readonly) id footer;
@property (nonatomic, strong) NSArray* cells;

+ (id) sectionWithCells:(id)cell, ... NS_REQUIRES_NIL_TERMINATION;
+ (id) sectionWithHeader:(id)header andFooter:(id)footer cells:(id)cell, ... NS_REQUIRES_NIL_TERMINATION;

- (id) initWithCells:(NSArray*)cells;
- (id) initWithHeader:(id)header andFooter:(id)footer cells:(NSArray*)cells;

- (id) cellForKey:(NSString*)key;
@end
