//
//  STSectionModel.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STSectionModel : NSObject {
    id _header;
    id _footer;
    
    NSMutableArray* _cells;
}

@property (nonatomic, strong) id header;
@property (nonatomic, strong) id footer;
@property (nonatomic, strong, readonly) NSMutableArray* cells;

- (void) addCellModel:(id)cell;
- (id) cellAtIndex:(NSInteger)index;

@end
