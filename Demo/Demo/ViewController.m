//
//  ViewController.m
//  Demo
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSMutableArray*) loadStructure {

    STCell* model11 = [STCell cellWithClass:[STTableViewCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text1", kCellText, @"detailText11", kCellDetailText, nil]];
    STCell* model12 = [STCell cellWithClass:[STTableViewCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text2", kCellText, @"detailText12", kCellDetailText, nil]];
    
    STSection* sectionModel1 = [STSection sectionWithCells:model11, model12, nil];
    STSection* sectionModel2 = [STSection sectionWithHeader:@"2" andFooter:nil cells:model12, model11, nil];
    
    return [NSArray arrayWithObjects:sectionModel1, sectionModel2, nil];
}

@end
