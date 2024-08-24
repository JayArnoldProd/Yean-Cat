// ScriptExecutor.mm
#import "ScriptExecutor.h"

@implementation ScriptExecutor

+ (void)executeScript:(NSString *)scriptName
        withArguments:(NSArray *)arguments
             delegate:(NSObject<ScriptExecutorDelegate> *)delegate {
    
    NSTask *task = [[NSTask alloc] init];
    NSString *scriptPath = [NSString stringWithFormat:@"./GIT_GPT_SERVER/scripts/%@.sh", scriptName];
    
    [task setCurrentDirectoryPath:@"/Users/joshuaarnold/Documents/GitHub/Yean-Cat"];
    [task setLaunchPath:@"/bin/bash"];
    [task setArguments:@[@"-l", @"-c", [NSString stringWithFormat:@"%@ %@", scriptPath, [arguments componentsJoinedByString:@" "]]]];
    
    NSPipe *pipe = [NSPipe pipe];
    [task setStandardOutput:pipe];
    [task setStandardError:pipe];
    
    NSFileHandle *file = [pipe fileHandleForReading];
    
    [task launch];
    
    NSData *data = [file readDataToEndOfFile];
    NSString *output = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    if ([delegate respondsToSelector:@selector(scriptExecutorDidProduceOutput:)]) {
        [delegate scriptExecutorDidProduceOutput:output];
    }
}

@end
