// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

//can you please look over this code and ensure it is set up to control

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    [input_binding_key(vk_up),    input_binding_key(ord("W"))],
            down:  [input_binding_key(vk_down),  input_binding_key(ord("S"))],
            left:  [input_binding_key(vk_left),  input_binding_key(ord("A"))],
            right: [input_binding_key(vk_right), input_binding_key(ord("D"))],
            
            jump:  input_binding_key(vk_space),
            cancel:  input_binding_key(vk_backspace),
            confirm:  input_binding_key(vk_enter),
            special: input_binding_key(vk_shift),
			chat: input_binding_key(ord("T")),
            
            //No aiming verbs since we use the mouse for that (see below for aiming verb examples)
            shoot: input_binding_mouse_button(mb_left),
            
            pause: input_binding_key(vk_escape),
        },
        
        gamepad:
        {
            up:    [input_binding_gamepad_axis(gp_axislv, true),  input_binding_gamepad_button(gp_padu)],
            down:  [input_binding_gamepad_axis(gp_axislv, false), input_binding_gamepad_button(gp_padd)],
            left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
            right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
            
            accept:  input_binding_gamepad_button(gp_face1),
            cancel:  input_binding_gamepad_button(gp_face2),
            action:  input_binding_gamepad_button(gp_face3),
            special: input_binding_gamepad_button(gp_face4),
            
            aim_up:			input_binding_gamepad_axis(gp_axisrv, true),
            aim_down:		input_binding_gamepad_axis(gp_axisrv, false),
            aim_left:		input_binding_gamepad_axis(gp_axisrh, true),
            aim_right:		input_binding_gamepad_axis(gp_axisrh, false),
            left_bumper:    input_binding_gamepad_button(gp_shoulderl),
			right_bumper:	input_binding_gamepad_button(gp_shoulderr),
			
            pause: input_binding_gamepad_button(gp_start),
        },
        
        touch:
        {
        //touch is handled already
        }
    };
}