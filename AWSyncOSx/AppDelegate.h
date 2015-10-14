//
//  AppDelegate.h
//  AWSyncOSx
//
//  Created by Airatch on 10/13/15.
//  Copyright (c) 2015 AirWatch. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{

    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlight;
    
    
}



-(IBAction) sync:(id)sender;



@end

