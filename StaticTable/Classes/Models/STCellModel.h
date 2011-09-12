//
//  STCellModel.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STCellModel : NSObject {
    NSInteger* _sectionIndex;    
    UITableViewCell* _cell;
    
    SEL _accessoryButtonTappedAction;
    SEL _didSelectAction;
}

@property (nonatomic) SEL accessoryButtonTappedAction;
@property (nonatomic) SEL didSelectAction;
@property (nonatomic, strong, readonly) UITableViewCell* cell;

- (id) initWitSectionIndex:(NSInteger)index;

@end

@interface STCellModel (Configuration)

/*
 *  Override this method and return proper cell reuse identifier.
 *  Default return model class name
 */
- (NSString*) reuseIdentifier;

/*
 *  Override this method and return proper cell height.
 *  Default 44.0f
 */
- (CGFloat) heightOfCell;

@end
