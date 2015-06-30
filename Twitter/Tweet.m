//
//  Tweet.m
//  Twitter
//
//  Created by Allen Chiang on 7/2/15.
//  Copyright (c) 2015 Yahoo. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (id) initWithDictionary: (NSDictionary *) dictionary {
    self = [super init];
    if (self) {
        self.user = [[User alloc] initWithDictionary:dictionary[@"user"]];
        self.text = dictionary[@"text"];
        
        NSString *createAtString = dictionary[@"created_at"];
        
        NSDateFormatter *formater = [[NSDateFormatter alloc] init];
        formater.dateFormat = @"EEE MMM d HH:hh:ss Z y";
        self.createdAt = [formater dateFromString:createAtString];

    }
    return self;
}

+ (NSArray *)tweetsWithArray:(NSArray *)array {
    NSMutableArray *tweets = [NSMutableArray array];
    
    for (NSDictionary *dict in array) {
        [tweets addObject:[[Tweet alloc] initWithDictionary:dict]];
    }
    
    return tweets;
}

@end
