//
//  AppDelegate.h
//  DeskTunes
//
//  Created by Brandon Schurman on 2013-03-26.
//  Copyright (c) 2013 Brandon Schurman. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Visualizer.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property Visualizer *visualizer;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
