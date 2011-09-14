//
//  ViewController.m
//  Demo
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "STSectionModel.h"
#import "STCell.h"


@implementation ViewController

- (NSMutableArray*) loadStructure {

    STCellModel* model11 = [STCellModel cellWithClass:[STCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text1", kCellText, @"detailText11", kCellDetailText, nil]];
    STCellModel* model12 = [STCellModel cellWithClass:[STCell class] 
                                            andParams:[NSDictionary dictionaryWithObjectsAndKeys:@"text2", kCellText, @"detailText12", kCellDetailText, nil]];
    
//    STSectionModel* sectionModel1 = [[STSectionModel alloc] initWithCells:[NSArray arrayWithObjects: model11, model12, nil]];
//    STSectionModel* sectionModel2 = [[STSectionModel alloc] initWithCells:[NSArray arrayWithObjects: model12, model11, nil]];

    STSectionModel* sectionModel1 = [[STSectionModel alloc] initWithHeader:@"1" andFooter:@"a1" cells:[NSArray arrayWithObjects: model11, model12, nil]];
    STSectionModel* sectionModel2 = [[STSectionModel alloc] initWithHeader:@"2" andFooter:@"a2" cells:[NSArray arrayWithObjects: model12, model11, nil]];
    
    return [NSArray arrayWithObjects:sectionModel1, sectionModel2, nil];
}

@end
