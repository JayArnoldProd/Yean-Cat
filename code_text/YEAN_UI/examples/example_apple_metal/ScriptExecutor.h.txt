// ScriptExecutor.h
#import <Foundation/Foundation.h>

@protocol ScriptExecutorDelegate
- (void)scriptExecutorDidProduceOutput:(NSString *)output;
@end

@interface ScriptExecutor : NSObject
+ (void)executeScript:(NSString *)scriptName
        withArguments:(NSArray *)arguments
             delegate:(id<ScriptExecutorDelegate>)delegate;
@end
