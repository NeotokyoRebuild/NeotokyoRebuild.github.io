title: Pre-Alpha v9.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v9.0
author: nullsystem

# Pre-Alpha v9.0 Release Note
2024-10-13 nullsystem (Proof-read by AdamTadeusz, brysondev, and xedmain)

* [Download v9.0-prealpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v9.0-prealpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Known issue

* Player collision has been broken in v9.0-prealpha due to attempting enemy-only collision, wait for v9.1-prealpha release for the fix

## New features

### VIP and TDM gamemodes
VIP mode turns CTG capture points into VIP escape points and a random person is selected as a VIP.
The VIP's objective is to escape by reaching the objective, while teammates tries to protect them.
The enemy instantly wins the round if the VIP is killed. The VIP has a different player model, stats,
and its own set of available loadouts including exclusive access to the SMAC.

TDM mode turns off both CTG capture points & ghosts, and enables respawning. The round time is extended to 10.25m.

The new convars for these settings are as follows:

* `neo_vote_game_mode` - 1 by default, Vote on game mode to play. TDM=0, CTG=1, VIP=2
* `neo_vip_eligible` - 1 by default, change to 0 to disable chance of being picked as VIP
* `sv_neo_vip_ctg_on_death` - 0 by default, Ghost spawns when VIP dies, continue the game as if it were CTG
* `sv_neo_change_game_type_mid_round` - 1 by default, Allow game type change mid-match
* `neo_tdm_round_timelimit` - 10.25 by default, TDM round timelimit, in minutes
* `neo_ctg_round_timelimit` - 3.25 by default, CTG round timelimit, in minutes
* `neo_vip_round_timelimit` - 3.25 by default, VIP round timelimit, in minutes

### Custom crosshair
You can now easily customize your crosshair. Inside options there is now a new tab called "Crosshair" and from here
you can pick between a textured or custom crosshair.
All crosshair colors can be changed, with the custom crosshair having further settings typical of crosshair customization.
There is also the ability to import and export custom crosshair files (uses the `neoxhr` file extension) for ease of sharing.

The new convars for these settings are as follows:

* `neo_cl_crosshair_style` - 0 by default, Set the crosshair style. 0 = default, 0 to 1 = textured, 2 = custom
* `neo_cl_crosshair_color_[rgba]` - 255 by default, Set the [red/green/blue/alpha] value of the crosshair color - Example: `neo_cl_crosshair_color_r 255`
* Only for custom-style crosshair:
    * `neo_cl_crosshair_size_type` - 0 by default, Set the size unit used for the crosshair. `0 = neo_cl_crosshair_size, 1 = neo_cl_crosshair_size_screen`
    * `neo_cl_crosshair_size` - 15 by default, Set the size of the crosshair
    * `neo_cl_crosshair_size_screen` - 0 by default, Set the size of the crosshair by half-screen scale
    * `neo_cl_crosshair_thickness` - 1 by default, Set the thickness of the crosshair
    * `neo_cl_crosshair_gap` - 5 by default, Set the gap of the crosshair
    * `neo_cl_crosshair_outline` - 0 by default, Set the crosshair outline
    * `neo_cl_crosshair_center_dot` - 0 by default, Set the size of the center dot
    * `neo_cl_crosshair_top_line` - 1 by default, Set if the top line will be shown
    * `neo_cl_crosshair_circle_radius` - 0 by default, Set the circle radius of the crosshair
    * `neo_cl_crosshair_circle_segments` - 30 by default, Set the segments of the circle

### Ready up mechanic
Ready up mechanic is now implemented, disabled by default. Use `neo_sv_readyup_lobby 1` server-side to enable it.
Players can use the `!ready`/`!unready` commands to ready-up, as well as `!overridelimit` to allow for more players
and `!playersnotready` to list players not ready.

The new convars for these settings are as follows:

* `neo_sv_readyup_lobby` - 0 by default, toggles the ready-up feature
* `neo_sv_readyup_teamplayersthres` - 5 by default, the exact amount of players to ready-up and participate to start a game
* `neo_sv_readyup_skipwarmup` - 1 by default, if ready-up feature is on and this is enabled, skip warmup state
* `neo_sv_readyup_autointermission` - 0 by default, if disabled will not automatically enter intermission when the match ends


### Player outlines in spectator mode
Using the `+attack2` keybind (default `x`), can toggle between player outlines/indicators

## Cloaking and visions

* All visions (night vision, motion, and thermal) now have improved shaders which are now closer to original NEOTOKYO°'s implementation
* Cloaking material is improved, tweaked values such as strength, speed, and distance effects more similar to original NEOTOKYO° implementation as well as when looked upon using vision modes

## General fixes/changes

* Cleaner scope texturing and minor color adjustment
* Workaround throwables (EX: grenades) clipping through the ground, now can pick up grenades as normal
* Grenades now throw closer to the center of the screen
* Fixed general console errors, spams, and startup errors
* Fixed wrong weapon name used in the damage/killer
* Fixed reload sounds, now spatial and stop when switching/dropping the weapon
* Prevent changing skins mid-round
* Weapon selection available 15 seconds after round is live, 25 seconds after spawning
* Fixed default round timings - 3m 15s for the total round time, 15s for pre-round freezetime (which is part of the total round time)
* Round state HUD clear and reload avatar images on reload scheme
* Allow player respawning during the first 3s of the server loaded in
* Disable tachi duplicate muzzle flash
* Adjust uplink HUD for larger displays (1440p/4k)
* Fixed spawning in without a loadout
* Stylized the chat box inspired by original NEOTOKYO°
* Lower weapons on ladder
* Fixed center message to be more like original NEOTOKYO°
* Fixed detpack's sound
* Fixed view model disappearing when switching to an empty weapon
* Integrate Tony Sergi's fixes for the model animations
* Stop camera from falling on initial team selection
* Give knife attack some force
* Fixed weapon stealing on teleporting spawns (EX: elevator spawns on `nt_snowfall_ctg`)

## Main menu fixes/changes

* Add the ability to rebind the console key. This is mostly to help out players with keyboards that do not have the backquote key.
* On startup, fetches the blog list from the website and opens in your default browser when clicking on one item in the list. (Only fetches the blog list once per day to prevent rate limiting).
* Can now reset the settings back to default and fix NT;RE-specific settings not being applied
* Hide console on ESC, mostly to improve behavior between console and NeoUI
* Add a scrollbar for scrollable sections (EX: Map list, Options keybindings)
* There is now a new loading screen which replaces the floating progress window with one written in NeoUI

## Infrastructure

* Binary files are now in a [separate repository](https://github.com/NeotokyoRebuild/neoAssets).
* CI - Automatic upload on tagged/release

