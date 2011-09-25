//
//  ViewController.m
//  Demo
//
//  Created by Emil Wojtaszek on 14.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
//#import "STTextFieldTableViewCell.h"

@implementation ViewController

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSMutableArray*) loadStructure {

    STCell* model11 = [STCell cellWithClass:[TableViewCell class] 
                                        key:@"model11"
                                     params:[NSDictionary dictionaryWithObjectsAndKeys:@"text1", kCellText, @"detailText11", kCellDetailText, nil]];
    
    STCell* model12 = [STCell cellWithClass:[TableViewCell class] 
                                        key:@"model12"
                                     params:[NSDictionary dictionaryWithObjectsAndKeys:@"text2", kCellText, @"detailText12", kCellDetailText, nil]];

    STCell* model13 = [STCell cellWithClass:[STTextFieldTableViewCell class] 
                                        key:@"model13"
                                     params:[NSDictionary dictionaryWithObjectsAndKeys:@"text2", kCellText, nil]];
                           
    STSection* sectionModel1 = [STSection sectionWithCells:model11, model12, nil];
    STSection* sectionModel2 = [STSection sectionWithHeader:@"2" andFooter:nil cells:model12, model11, model13, nil];
    
    return [NSArray arrayWithObjects:sectionModel1, sectionModel2, nil];
}

@end
