//
//  STCellModel.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString* kCellText;
extern NSString* kCellDetailText;
extern NSString* kCellIdentifier;

@interface STCellModel : NSObject {
    Class _cellClass;
    NSDictionary* _params;

    SEL _accessoryButtonTappedAction;
    SEL _didSelectAction;
}

@property (nonatomic) SEL accessoryButtonTappedAction;
@property (nonatomic) SEL didSelectAction;
@property (nonatomic, strong) NSDictionary* params;
@property (nonatomic, assign) Class cellClass;

- (id) initWithClass:(Class)cellClass;
+ (id) cellWithClass:(Class)cellClass andParams:(NSDictionary*)dict;

- (NSString*) cellIdentifier;

@end
