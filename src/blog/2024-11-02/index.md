title: Pre-Alpha v10.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v10.0
author: brysondev

# Pre-Alpha v10.0 Release Note
2024-11-02 brysondev (Proof-read by nullsystem)

* [Download v10.0-prealpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v10.0-prealpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## New features

### Deathmatch

Deathmatch is the free-for-all equivalent to TDM with both CTG capture points & ghost disabled, and enables respawning. Win by achieving 50 XP or after the timer runs out (10.25 minutes)

The new ConVars for these settings are as follows:

* `neo_vote_game_mode` - 1 by default, Vote on game mode to play. TDM=0, CTG=1, VIP=2, **DM=3**
* `neo_dm_round_timelimit` - 10.25 by default, DM round time limit, in minutes.
* `neo_sv_dm_win_xp` - 50 by default, XP limit to win the match.
* `neo_sv_dmspawn_useent` - Default 0, override to use map's deathmatch spawn entity over the dmspawn loc file.
* `neo_sv_dm_max_class_dur` - Default 5s, maximum duration you're allowed to pick a class post-spawning in.
* `neo_sv_warmup_godmode` - 0 by default, if 1, everyone takes no damage at all, regardless of bullets, fall, or grenades during idle or warmup state.

In addition, new ConCommands (for local servers only) have been added to customize dm spawning locations:

* `neo_sv_dmspawn_create` - Create a dmspawn spawn.
* `neo_sv_dmspawn_removeall` - Remove all dmspawn spawns.
* `neo_sv_dmspawn_printlocs` - Print all coordinates of the dmspawn spawns.
* `neo_sv_dmspawn_save` - Save the map's loc dmspawn file.
* `neo_sv_dmspawn_load` - Load the map's loc dmspawn file.
* `neo_sv_dmspawn_teleportnext` - Teleport to the next dmspawn spawn.
* `neo_sv_dmspawn_mapinfo` - Check amount of dmspawn spawns and if it can DM.

If you wish to customize the spawns for a dedicated server, be sure to copy the generated .loc files located in `/neo/maps/dm_locs` to the server.

### Streamer Mode

NT;RE is now able to detect OBS running and introduces safeguards for streamers. This includes no user avatars and replaces all names with preset generic names.

Streamer mode can be enabled in the options menu, or by typing `neo_cl_streamermode 1` in the developer console. The auto OBS detection can also be enabled in the options menu or with `neo_cl_streamermode_autodetect_obs 1` (This requires a game restart to take effect.)

### Clan Tags

Clan Tags can now be set in the options menu, or by typing `neo_clantag <tag>` in the developer console. Server owners can opt out of clan tags being show by adding `neo_sv_clantag_allow 0` to their server configuration files. If all players on a team have a matching clan tag, the team's name will reflect the tag set.

### Viewmodel Only Lean

Players now have the option to enable viewmodel only leaning. This prevents a roll effect to the camera view while leaning. Option can be changed in the options menu, or by typing `cl_neo_lean_viewmodel_only 1` in the developer console.

## New additions

* Added M41L (inaccessible in weapon selection menu; use `give weapon_m41l` with `sv_cheats 1` to use)
* Added placeholder missing weapon animations
* Added `cl_neo_bullet_trace` (cheat protected) - Show bullet trace
* Added `cl_neo_bullet_trace_max_pen` (cheat protected) - How much pen does a bullet need to have to show up as a solid red line. Configure to the current weapon used, or leave on default to see differences in pen between weapons
* Rangefinder restored from original NEOTOKYO
    * Added `neo_cl_hud_rangefinder_enabled` - 1 as default, toggle enable/disable
    * Added `neo_cl_hud_rangefinder_pos_frac_[x/y]` - 0.55 as default, position in fraction in screen width/height
* Compass fade commands have been restored

## General fixes

* Fixed inconsistent game mode message on round start
* Fixed player label in spectator to update in real time
* Changed damage log UI to only show for 10 seconds (was 60 seconds)
    * Added option to dismiss for the remainder of match
* Fixed issue with view models being visible to players after death in spectator
* Tachi and Milso can no longer shoot underwater
* Corrected issue with new NEOUI and legacy settings being out of sync
* Fixed issue with respawning once round is live vs in freeze time
* Fixed score cap in TDM/DM
* Fixed damage/penetration values for SRM, SRMS, ZR68C to match original NEOTOKYO
* Fixed muzzle flash from showing when scoped in
* Fixed knife from swinging with `+attack2`
* Fixed issue with spectator x-ray being visible on respawn
* Corrected x-ray draw
* Corrected Jinrai recon sprinting animations
* Fixed SRS weapon reload timing

## General changes

* Changed various aspects with throwables
    * Disabled priming of throwables with `+attack2`
    * Removed underhand/lobbing for grenades
    * Allow player to throw grenades while sprinting
* Changed various aspects of deathmatch game mode
    * Fixed issue with player respawning after death
    * Fixed class switching on respawn
    * Weapon menu now appears on respawn
* NeoUI fonts now support resolutions over 1440p up to 4K
* Changes to ready up system 
    * Changed command prefix from `!` to `.`
    * Changed command names to match original NEOTOKYO ready up commands. 
        * `.playersnotready` is now `.readylist`
        * `.overridelimit` is now `.start`
    * Fixed spectators showing in `.readylist`
    * `.help` now outputs to chat
    * Added `.pause` & `.unpause` commands
        * Menu is displayed to choose between a short (30 seconds) or long (3 minute) pause
        * Pauses can happen instant if during a pre-round freeze, otherwise will just goes into the next round
        * Cannot pause during idle/warmup as that is not a live match
        * HUD updated and center text flashing to indicate pause state. Pause state have it red in the HUD round state
        * The team that paused can start unpause request with `.unpause`. Then the non-pausing team is required to respond with `.unpause`. The pausing team can cancel the unpause request by `.unpause`
    * New ConVars:
        * `neo_sv_pausematch_enabled` - 0 by default, enable match pausing feature.
        * `neo_sv_pausematch_unpauseimmediate` - 0 by default, locked by cheat flag, unpause command is immediate.
* Removed startup intro video
* Gamemode enforcement by default is now changed to by map. Singular/random/by vote also implemented.
    * Added `neo_sv_gamemode_enforcement` - Default = 0 (map - neo_game_config), determine gamemode by... 0 = map (neo_game_config), 1 = neo_sv_gamemode_single, 2 = Random within neo_sv_gamemode_random_allow, 3 = vote (neo_vote_game_mode in idle/warmup)
    * Added `neo_sv_gamemode_single` - The single game mode to enforce
    * Added `neo_sv_gamemode_random_allow` - The bitwise of game modes that is allowed to be used for the randomizer
