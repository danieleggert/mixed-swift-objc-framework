//
//  Baz.m
//  Foo
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

#import "Baz.h"

#import "Norf.h"

// It's a bit off, but apparently the only way we can access Swift is through a header that lives inside the framework's public "Headers" directory.
#import <Foo/Foo-Swift.h>



@implementation Baz

- (void)doSomething;
{
    NSLog(@"Baz");
    Bar *bar = [[Bar alloc] init];
    [bar doSomething];
    NSLog(@"%@", [[Norf alloc] init]);
}

@end
