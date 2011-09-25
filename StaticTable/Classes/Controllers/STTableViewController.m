//
//  STTableViewController.m
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

// Controllers
#import "STTableViewController.h"

@implementation STTableViewController

@synthesize modelStructure = _modelStructure;

#pragma mark -
#pragma mark Class methods

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self != nil) {
        
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    _modelStructure = [self loadStructure];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)viewDidUnload {
    _modelStructure = nil;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (STCell*) cellModelAtIndexPath:(NSIndexPath*)indexPath {
    STSection* section = [_modelStructure objectAtIndex:indexPath.section];
    return [section.cells objectAtIndex:indexPath.row];
}

#pragma mark -
#pragma mark UITableViewDataSource

////////////////////////////////////////////////////////////////////////////////////////////////////
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    STSection* section = [_modelStructure objectAtIndex:indexPath.section];
    STCell* cellModel = [section.cells objectAtIndex:indexPath.row];

    NSString* cellIdentifier = [cellModel cellIdentifier];
    STTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[[cellModel cellClass] alloc] initWithReuseIdentifier:cellIdentifier];
    }

    [cell setModel:cellModel];
    [cell configureCellWithParams:cellModel.inputParams];
    
    return cell;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [_modelStructure count];    
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[_modelStructure objectAtIndex:section] cells] count];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    STSection* sectionModel = [_modelStructure objectAtIndex:section];
    if ([sectionModel.footer isKindOfClass: [NSString class]]) {
        return sectionModel.footer;
    }
    return nil;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    STSection* sectionModel = [_modelStructure objectAtIndex:section];
    if ([sectionModel.header isKindOfClass: [NSString class]]) {
        return sectionModel.header;
    }
    return nil;
}

#pragma mark -
#pragma mark UITableViewDelegate

////////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0f;
//    return [[self cellModelAtIndexPath:indexPath] heightOfCell];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    SEL selector = [[self cellModelAtIndexPath:indexPath] accessoryButtonTappedAction];
    
    if ((selector) && ([self respondsToSelector:selector])) {
        objc_msgSend(self, selector, self);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    id cell = [tableView cellForRowAtIndexPath:indexPath];

    if ([cell isKindOfClass:[STTextFieldTableViewCell class]]) {
        [[(STTextFieldTableViewCell*)cell defualtResponder] becomeFirstResponder];
    }
    
    return indexPath;
    
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SEL selector = [[self cellModelAtIndexPath:indexPath] didSelectAction];

    if ((selector) && ([self respondsToSelector:selector])) {
        objc_msgSend(self, selector, self);
    }
}

@end

@implementation STTableViewController (Creation)

////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSArray*) loadStructure {
    return nil;    
}


@end
