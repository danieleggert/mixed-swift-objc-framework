//
//  AppDelegate.m
//  MyApp
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

#import "AppDelegate.h"

#import <Foo/Foo.h>



@interface AppDelegate ()

@end



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Here we can access the classes from Foo and check that they work:
    
    NSLog(@"AppDelegate");
    id baz = [[Baz alloc] init];
    NSLog(@"%@", baz);
    [baz doSomething];

    id bar = [[Bar alloc] init];
    NSLog(@"%@", bar);

    return YES;
}

@end
