//
//  Event+Stuff.m
//  CoreDataDemo
//
//  Created by administrator on 08.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "Event+Stuff.h"

@implementation Event (Stuff)

+(instancetype)insertEventWithTitle:(NSString *)title
                               time:(NSDate *)time
                          inContext:(NSManagedObjectContext *)context
{
    Event *event = [NSEntityDescription insertNewObjectForEntityForName:@"Event"
                                                 inManagedObjectContext:context];
    event.time = time;
    event.title = title;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"yyyyMMdd";
    event.day = [df stringFromDate:time];
    
    return event;
}

@end
