//
//  CDDAddEventViewController.h
//  CoreDataDemo
//
//  Created by administrator on 15.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CDDAddEventViewControllerDelegate;

@interface CDDAddEventViewController : UIViewController

@property (nonatomic, strong) NSManagedObjectContext *context;
@property (nonatomic, weak) id<CDDAddEventViewControllerDelegate> delegate;

@end

@protocol CDDAddEventViewControllerDelegate <NSObject>

-(void)addEventViewControllerDidFinish:(CDDAddEventViewController*)sender;

@end
