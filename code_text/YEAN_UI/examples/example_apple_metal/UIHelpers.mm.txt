//
//  UIHelpers.mm
//  example_apple_metal
//
//  Created by Joshua Arnold on 7/21/24.
//  Copyright © 2024 Warren Moore. All rights reserved.
//

#import "UIHelpers.h"
#import "imgui.h"

@implementation UIHelpers

+ (void)renderBugManagementWindow {
    ImGui::Begin("Bug Management");
    // Implement bug management UI here
    ImGui::End();
}

+ (void)renderFeatureManagementWindow {
    ImGui::Begin("Feature Management");
    // Implement feature management UI here
    ImGui::End();
}

+ (void)renderConsoleOutput {
    ImGui::Begin("Console");
    // Implement console output UI here
    ImGui::End();
}

+ (void)renderTerminalWindow {
    ImGui::Begin("Terminal");
    // Implement terminal window UI here
    ImGui::End();
}

@end
