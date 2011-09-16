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
    NSDictionary* _params;

    SEL _accessoryButtonTappedAction;
    SEL _didSelectAction;
    
    NSString* _inputValue;
    NSString* _initValue;
}

@property (nonatomic) SEL accessoryButtonTappedAction;
@property (nonatomic) SEL didSelectAction;
@property (nonatomic, strong) NSDictionary* params;
@property (nonatomic, assign) Class cellClass;
@property (nonatomic, strong) NSString* inputValue;
@property (nonatomic, strong) NSString* initValue;

- (id) initWithClass:(Class)cellClass;
+ (id) cellWithClass:(Class)cellClass andParams:(NSDictionary*)dict;

- (NSString*) cellIdentifier;

@end
