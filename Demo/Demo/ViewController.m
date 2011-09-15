//
//  ViewController.m
//  Demo
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "STSection.h"
#import "STTableViewCell.h"


@implementation ViewController

- (NSMutableArray*) loadStructure {

    STCell* model11 = [STCell cellWithClass:[STTableViewCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text1", kCellText, @"detailText11", kCellDetailText, nil]];
    STCell* model12 = [STCell cellWithClass:[STTableViewCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text2", kCellText, @"detailText12", kCellDetailText, nil]];
    
//    STSectionModel* sectionModel1 = [[STSectionModel alloc] initWithHeader:@"1" andFooter:@"a1" cells:[NSArray arrayWithObjects: model11, model12, nil]];
//    STSectionModel* sectionModel2 = [[STSectionModel alloc] initWithHeader:@"2" andFooter:@"a2" cells:[NSArray arrayWithObjects: model12, model11, nil]];

    STSection* sectionModel1 = [[STSection alloc] initWithCells:model11, model12, nil];
    STSection* sectionModel2 = [[STSection alloc] initWithHeader:@"2" andFooter:nil cells:model12, model11, nil];
    
    return [NSArray arrayWithObjects:sectionModel1, sectionModel2, nil];
}

@end
