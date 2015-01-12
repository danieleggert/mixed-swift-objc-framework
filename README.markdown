# How to Mix Swift and Objective-C in a Framework Target

In an app target, a bridging header does the trick. Inside a framework target, things are trickier.

Out of the box, Swift code can access ObjC code defined in header files which have an `#import` inside the frameworks umbrella header. These are also the public header files. If we want Swift to access private classes from within the same framework, we have to dance a small dance.

Inside Swift code we can only `import` so called modules. The trick is to define a module which in turn contains all the ObjC headers that we need the Swift code to access.

The sample project contains an app *MyApp* which uses a framework called *Foo*.

## Foo

The framework does its usual stuff, and in addition there's a directory called `FooPrivate` -- this is actually a module. Inside it there's a `module.modulemap` file which specifies the ObjC header files with relative paths. The framework target for `Foo` has its `SWIFT_INCLUDE_PATHS` set to `$(SRCROOT)/Foo` which is the parent directory of the `FooPrivate` directory.

With this, Swift code can `import FooPrivate` and then use (private) ObjC classes.

## Private Module

When Swift code accesses the Foo module created by the framework, it needs to find the FooPrivate module, too.

We can work around this issue by adding

    module FooPrivate {
        export *
    }

to the `.modulemap` of the framework. In Xcode this can be done by simply setting `MODULEMAP_PRIVATE_FILE` to point to a module map file with this content.
