//
//  STCellModel.h
//  StaticTable
//
//  Created by Emil Wojtaszek on 12.09.2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

extern NSString* kCellIdentifier;

@interface STCell : NSObject {
    Class _cellClass;
    NSString* _key;

    SEL _accessoryButtonTappedAction;
    SEL _didSelectAction;
    
    NSDictionary* _inputParams;
    NSDictionary* _outputParams;

    UITableViewCellAccessoryType _accessoryType;
    UITableViewCellSelectionStyle _selectionStyle;
}

@property (nonatomic, assign) UITableViewCellSelectionStyle selectionStyle;
@property (nonatomic, assign) UITableViewCellAccessoryType accessoryType;
@property (nonatomic, assign) Class cellClass;
@property (nonatomic, strong) NSString* key;
@property (nonatomic) SEL accessoryButtonTappedAction;
@property (nonatomic) SEL didSelectAction;
@property (nonatomic, strong) NSDictionary* inputParams;
@property (nonatomic, strong) NSDictionary* outputParams;

- (id) initWithClass:(Class)cellClass key:(NSString*)key;
+ (id) cellWithClass:(Class)cellClass key:(NSString*)key params:(NSDictionary*)params;

- (NSString*) cellIdentifier;

@end
