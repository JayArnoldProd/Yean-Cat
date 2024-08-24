//
//  AppViewController.h
//  example_apple_metal
//
//  Created by Joshua Arnold on 8/24/24.
//  Copyright © 2024 Warren Moore. All rights reserved.
//

#ifndef AppViewController_h
#define AppViewController_h

#import <Cocoa/Cocoa.h>
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>
#import "ScriptExecutor.h"

@interface AppViewController : NSViewController<MTKViewDelegate, NSWindowDelegate, ScriptExecutorDelegate>
@property (nonatomic, strong) MTKView *mtkView;
@property (nonatomic, strong) id <MTLDevice> device;
@property (nonatomic, strong) id <MTLCommandQueue> commandQueue;
@end

#endif /* AppViewController_h */
