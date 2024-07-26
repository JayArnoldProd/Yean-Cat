//
//  ScriptExecutor.mm
//  example_apple_metal
//
//  Created by Joshua Arnold on 7/21/24.
//  Copyright © 2024 Warren Moore. All rights reserved.
//

#import "ScriptExecutor.h"

@implementation ScriptExecutor

+ (void)executeScript:(NSString *)scriptPath withArguments:(NSArray *)arguments {
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:scriptPath];
    [task setArguments:arguments];
    
    NSPipe *pipe = [NSPipe pipe];
    [task setStandardOutput:pipe];
    
    NSFileHandle *file = [pipe fileHandleForReading];
    
    [task launch];
    
    NSData *data = [file readDataToEndOfFile];
    NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    // Handle the output (e.g., display it in the console window)
    NSLog(@"Script output: %@", output);
}

@end
