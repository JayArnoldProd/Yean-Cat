//main.mm
#import <Cocoa/Cocoa.h>
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>
#import "imgui.h"
#import "imgui_impl_metal.h"
#import "imgui_impl_osx.h"
#import "ScriptExecutor.h"
#import "AppViewController.h"

@implementation AppViewController {
    char outputText[4096];
}

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _device = MTLCreateSystemDefaultDevice();
        if (!_device) {
            NSLog(@"Metal is not supported on this device");
            return nil;
        }
        _commandQueue = [_device newCommandQueue];
        if (!_commandQueue) {
            NSLog(@"Failed to create command queue");
            return nil;
        }
    }
    return self;
}

- (void)scriptExecutorDidProduceOutput:(NSString *)output {
    strncpy(outputText, [output UTF8String], sizeof(outputText) - 1);
    outputText[sizeof(outputText) - 1] = '\0'; // Ensure null-termination
}

- (void)loadView {
    self.mtkView = [[MTKView alloc] initWithFrame:CGRectMake(0, 0, 1200, 720) device:self.device];
    self.view = self.mtkView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.mtkView.device = self.device;
    self.mtkView.delegate = self;
    self.mtkView.clearColor = MTLClearColorMake(0.45f, 0.55f, 0.60f, 1.00f);
    self.mtkView.enableSetNeedsDisplay = NO;
    self.mtkView.paused = NO;

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io.ConfigFlags |= ImGuiConfigFlags_ViewportsEnable;

    ImGui::StyleColorsDark();

    ImGui_ImplMetal_Init(self.device);
    ImGui_ImplOSX_Init(self.mtkView);

    // This line is important
    io.ConfigFlags &= ~ImGuiConfigFlags_ViewportsEnable;
}


- (void)drawInMTKView:(MTKView*)view {
    ImGuiIO& io = ImGui::GetIO();
    io.DisplaySize.x = view.bounds.size.width;
    io.DisplaySize.y = view.bounds.size.height;

    CGFloat framebufferScale = view.window.screen.backingScaleFactor ?: NSScreen.mainScreen.backingScaleFactor;
    io.DisplayFramebufferScale = ImVec2(framebufferScale, framebufferScale);

    id<MTLCommandBuffer> commandBuffer = [self.commandQueue commandBuffer];
    MTLRenderPassDescriptor* renderPassDescriptor = view.currentRenderPassDescriptor;
    
    if (renderPassDescriptor != nil)
    {
        id <MTLRenderCommandEncoder> renderEncoder = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
        [renderEncoder pushDebugGroup:@"Dear ImGui rendering"];

        ImGui_ImplMetal_NewFrame(renderPassDescriptor);
        ImGui_ImplOSX_NewFrame(view);
        ImGui::NewFrame();

        // Your ImGui code here
        ImGui::Begin("YEAN_UI");
        //ImGui::Text("Hello, world!");
        if (ImGui::Button("Run code_backup.sh")) {
            [ScriptExecutor executeScript:@"code_backup" withArguments:@[] delegate:self];
        }
        
        if (ImGui::Button("Generate Hierarchy")) {
            [ScriptExecutor executeScript:@"generate_hierarchy" withArguments:@[] delegate:self];
        }
        
        ImGui::InputTextMultiline("Output", outputText, IM_ARRAYSIZE(outputText), ImVec2(-1.0f, ImGui::GetTextLineHeight() * 8), ImGuiInputTextFlags_ReadOnly);

        static char command[1024] = "";
        ImGui::InputTextMultiline("Command Input", command, IM_ARRAYSIZE(command), ImVec2(-1.0f, ImGui::GetTextLineHeight() * 16), ImGuiInputTextFlags_AllowTabInput);

        if (ImGui::Button("Execute Command")) {
            NSString *cmdString = [NSString stringWithUTF8String:command];
            NSArray *cmdComponents = [cmdString componentsSeparatedByString:@" "];
            if (cmdComponents.count > 0) {
                NSString *scriptName = cmdComponents[0];
                NSArray *args = [cmdComponents subarrayWithRange:NSMakeRange(1, cmdComponents.count - 1)];
                [ScriptExecutor executeScript:scriptName withArguments:args delegate:self];
            }
        }
        ImGui::End();

        ImGui::Render();
        ImGui_ImplMetal_RenderDrawData(ImGui::GetDrawData(), commandBuffer, renderEncoder);

        [renderEncoder popDebugGroup];
        [renderEncoder endEncoding];

        [commandBuffer presentDrawable:view.currentDrawable];
    }

    [commandBuffer commit];
}

- (void)mtkView:(MTKView *)view drawableSizeWillChange:(CGSize)size {
    NSLog(@"Drawable size will change to: %@", NSStringFromSize(size));
}

- (void)dealloc {
    ImGui_ImplMetal_Shutdown();
    ImGui_ImplOSX_Shutdown();
    ImGui::DestroyContext();
}

- (void)viewWillAppear
{
    [super viewWillAppear];
    self.view.window.delegate = self;
}

- (void)windowWillClose:(NSNotification *)notification
{
    ImGui_ImplMetal_Shutdown();
    ImGui_ImplOSX_Shutdown();
    ImGui::DestroyContext();
}

@end

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, strong) NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    AppViewController *rootViewController = [[AppViewController alloc] initWithNibName:nil bundle:nil];
    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(100, 100, 1200, 720)
                                              styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable
                                                backing:NSBackingStoreBuffered
                                                  defer:NO];
    self.window.contentViewController = rootViewController;
    [self.window makeKeyAndOrderFront:nil];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        return NSApplicationMain(argc, argv);
    }
}
