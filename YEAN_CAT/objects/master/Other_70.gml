/// @description Insert description here
// You can write your code in this editor
// Early exit if there is no 'type' key defined
if (!ds_exists(async_load, ds_type_map)) {
    show_debug_message("async_load is not a valid ds_map");
    exit;
}
if (!ds_map_exists(async_load, "type")) exit;

// All the events triggered by the AdMob extension have a “type” key
// containing a string that starts with “AdMob_”.
switch(async_load[? "type"])
{
    // AdMob_Consent_RequestInfoUpdate() succeeded
    case "AdMob_Consent_OnRequestInfoUpdated":

        // Now we need to get the consent Status, this will tell us if we
        // are required to ask the user for GDPR consent.
        if (AdMob_Consent_GetStatus() == AdMob_Consent_Status_REQUIRED)

            // Since we are REQUIRED, we now need to load the consent
            // form before we can show it. For this we use the function
            // below (more info: AdMob_Consent_Load). This function call
            // will also generate an ASYNC SOCIAL EVENT.
            AdMob_Consent_Load();
        break;

    // AdMob_Consent_RequestInfoUpdate() failed
    case "AdMob_Consent_OnRequestInfoUpdateFailed":
		infoupdate=-1
        // This means there was a problem while setting the consent
        // mode. Here we can add some code to deal with it.
        break;

    // AdMob_Consent_Load() succeeded
    case "AdMob_Consent_OnLoaded":

        // We have successfully loaded the consent form and we are now
        // ready to show it to the user (more info: AdMob_Consent_Show)
        AdMob_Consent_Show();
        break;

    // AdMob_Consent_Load() failed
    case "AdMob_Consent_OnLoadFailed":
		infoupdate=-1
        // This means there was a problem while loading the consent
        // form. Here we can add some code to deal with it.
        break;

    // AdMob_Consent_Show() succeeded and the user already answered it
    case "AdMob_Consent_OnShown":

        // At this point we now have the consent information from the
        // user. We can use both the GetStatus and GetType functions to
        // get the obtained information (more info:
        // AdMob_Consent_GetStatus and AdMob_Consent_GetType)
        global.ConsentStatus = AdMob_Consent_GetStatus();
        global.ConsentType = AdMob_Consent_GetType();
		infoupdate=1
        break;

// AdMob_Initialize() finished initializing the API
    case "AdMob_OnInitialized":
		init=1
        // Now that we are sure that the API got initialized we can load
        // a new rewarded video ad.(more info: AdMob_RewardedVideo_Load).
        // This function will generate an ASYNC SOCIAL EVENT.
        AdMob_RewardedVideo_Load();
        break;

    // AdMob_RewardedVideo_Load() succeeded
    case "AdMob_RewardedVideo_OnLoaded":
noad=0
        // At this point we should now have the rewarded ad loaded and
        // and we can check that using the ´AdMob_RewardedVideo_IsLoaded´
        // function. We are now ready to show the rewarded video ad to the
        // user (more info: AdMob_RewardedVideo_Show). This function will
        // generate an ASYNC SOCIAL EVENT.
       // AdMob_RewardedVideo_Show();
        break;

    // AdMob_RewardedVideo_Load() failed
    case "AdMob_RewardedVideo_OnLoadFailed":
noad=1
        // At this point there was a problem while loading the
        // interstitial ad. Here we can add some code to deal with it.

        // NOTE: Don’t try to reload the interstitial ad here because
        // it can lead to an infinite loop.
        break;

    // AdMob_RewardedVideo_Show() succeeded
    case "AdMob_RewardedVideo_OnFullyShown":
		global.pause=1
        // At this point the rewarded video ad is playing and the user is
        // looking at it. Note that at this point in time your game is
        // paused and will remain paused until the rewarded video ad gets
        // dismissed.
        break;

    // AdMob_RewardedVideo_Show() failed
    case "AdMob_RewardedVideo_OnShowFailed":
		global.pause=0
		reviving=0
        // At this point the rewarded video ad failed to get shown to the
        // user. You can add code to deal with the problem here.

        // NOTE: Don’t try to reload/show the rewarded video here
        // because it can lead to an infinite loop.
        break;

    // RewardedVideo got dismissed
    case "AdMob_RewardedVideo_OnDismissed":
	global.pause=0
	reviving=0
        // At this point the rewarded video ad got dismissed by the user
        // and the game logic is running again.
		AdMob_RewardedVideo_Load();
        break;

    // RewardedVideo triggered the reward event
    case "AdMob_RewardedVideo_OnReward":
global.pause=0
reviving=1
        // At this point the user watched enough of the rewarded video and
        // can be rewarded for it. Here we can add the reward code.
        //show_debug_message("You got 1000 points");
		AdMob_RewardedVideo_Load();
        break;

}



