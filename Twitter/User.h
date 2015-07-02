//
//  User.h
//  Twitter
//
//  Created by Allen Chiang on 7/2/15.
//  Copyright (c) 2015 Yahoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *screenname;
@property (nonatomic, strong) NSString *profileImageUrl;
@property (nonatomic, strong) NSString *tagline;


- (id) initWithDictionary: (NSDictionary *) dictionary;

+ (User *)currentUser;
+ (void)setCurrentUser:(User *)currentUser;

@end
