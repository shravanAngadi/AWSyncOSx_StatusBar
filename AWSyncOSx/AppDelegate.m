//
//  AppDelegate.m
//  AWSyncOSx
//
//  Created by Airatch on 10/13/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import "AppDelegate.h"
#import "SocketController.h"

@interface AppDelegate (){
    
    AWContactSupportViewController *supportController;
    SocketController *socketController;
}

//@property (weak) IBOutlet NSWindow *mainWindow;


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
    
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"AWLocker-Sync-1" ofType:@"png"]];
    
    [statusImage setTemplate:YES];
    
    [statusItem setImage:statusImage];
    
    [statusItem setToolTip:NSLocalizedString(@"Airwatch",nil)];
    
    [statusItem setMenu:statusMenu];
    
    [statusItem setHighlightMode:YES];
    
    [statusItem setTarget:self];
    
}

-(void) dealloc {
}


-(IBAction) sync:(id)sender {
    
    NSLog(@"Sync in progress.. \n");
    
    
    //Scan the AW-Sinc folder and notify changes.
    
    //call the AWSocket API here to create a socket client. Connet to the CS socket server, and pass on a message to CS to start sync!
    
    socketController = [SocketController alloc];
    
    [socketController connectAndSendMessageToCS:@"SYN"];
    
}


-(IBAction) displayContactSupport:(id)sender{
    
    NSLog(@"Displaying info about AirWatch.. \n");

    if (!supportController) {
        supportController = [[AWContactSupportViewController alloc] initWithWindowNibName:@"AWContactSupportViewController"];
    }
 
    [supportController displayWindow];
    
//    [supportController showWindow:self];
}



@end
