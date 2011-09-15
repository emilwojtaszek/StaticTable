//
//  STSection.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

//Framework
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//Models
#import "STCell.h"

@interface STSection : NSObject {

@protected
    id _header;
    id _footer;
    
    NSArray* _cells;
}

@property (nonatomic, strong, readonly) id header;
@property (nonatomic, strong, readonly) id footer;
@property (nonatomic, strong) NSArray* cells;

- (id) initWithCells:(id)cell, ... NS_REQUIRES_NIL_TERMINATION;
- (id) initWithHeader:(id)header andFooter:(id)footer cells:(id)cell, ... NS_REQUIRES_NIL_TERMINATION;

@end