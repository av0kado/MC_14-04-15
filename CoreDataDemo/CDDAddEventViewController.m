//
//  CDDAddEventViewController.m
//  CoreDataDemo
//
//  Created by administrator on 15.04.14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "CDDAddEventViewController.h"
#import "Event+Stuff.h"
@import CoreData;

@interface CDDAddEventViewController ()
@property (weak, nonatomic) IBOutlet UITextField *eventTitle;
- (IBAction)save:(id)sender;

@end

@implementation CDDAddEventViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.eventTitle becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender
{
    Event *event = [NSEntityDescription insertNewObjectForEntityForName:@"Event"
                    
                                                 inManagedObjectContext:self.context];
    event.time = [NSDate date];
    event.title = self.eventTitle.text;
    //event.day = @"YYYYMMDD"
    
    NSError *error;
    if (![self.context save:&error])
    {
        
    }
    
    [self.delegate addEventViewControllerDidFinish:self];
}

@end
