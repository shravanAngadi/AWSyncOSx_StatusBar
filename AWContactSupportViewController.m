//
//  AWContactSupportViewController.m
//  
//
//  Created by Airatch on 10/14/15.
//
//

#import "AWContactSupportViewController.h"

@interface AWContactSupportViewController ()



@property (strong, atomic) IBOutlet NSWindow *contactSupportWindow;


@end

@implementation AWContactSupportViewController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


-(void) displayWindow {
    NSLog(@"Displaying about AW");
    
    [NSApp activateIgnoringOtherApps:YES];
    NSWindow *aWindow = [self window];
    [aWindow makeKeyAndOrderFront:nil];
    
    [self showWindow:self];

    
}

@end
