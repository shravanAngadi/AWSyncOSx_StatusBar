//
//  AppDelegate.m
//  AWSyncOSx
//
//  Created by Airatch on 10/13/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

//@property (weak) IBOutlet NSWindow *window;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


-(void) awakeFromNib {
    
//    [statusMenu set]
    
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"AirWatchSclSync" ofType:@"png"]];
    
    [statusItem setImage:statusImage];
    
    
    
    [statusItem setMenu:statusMenu];
    
    [statusItem setHighlightMode:YES];
    
    
    
}

-(void) dealloc {
}


-(IBAction) sync:(id)sender {
    
    NSLog(@"Sync in progress.. \n");
    
    
    //call the AWSocket API here to create a socket client. Connet to the CS socket server, and pass on a message to CS to start sync!
    
    
    
}




@end
