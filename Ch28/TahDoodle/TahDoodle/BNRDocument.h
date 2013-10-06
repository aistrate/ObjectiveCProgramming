//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Adrian Istrate on 04/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}

- (IBAction)createNewItem:(id)sender;
- (IBAction)deleteSelectedItem:(id)sender;

@end
