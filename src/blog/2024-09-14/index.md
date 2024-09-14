title: Pre-Alpha v8.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v8.0
author: nullsystem

# Pre-Alpha v8.0 Release Note
2024-09-14 nullsystem (Proof-read by Rainyan and brysondev)

* [Builds download + changelog](https://github.com/NeotokyoRebuild/neo/releases/tag/v8.0-prealpha)

## Highlights

### Weapon spread and recoil
Spread and recoil changes are now in place and are parity/close to OG:NT. There is now a difference between hip fire
and ADS, giving a tighter spread for ADS.

### New main menu
The main menu has received an entire overhaul, replacing the standard Sourcemod main menu with custom fonts, buttons
and so-forth. The settings,
server browser, listen server creator, popups, and player lists have been updated with new and work-in-progress
elements. The design of these elements are not final, and while
the server browser is missing some extras, it is usable enough to replace the old UIs currently. However, the "legacy"
windows can be accessed in the server browser and settings using the "legacy" button on the bottom.

Here's a screenshot of the settings page:

[![Options menu with the new overhaul GUI](neoimgui.png_thumb.png)](neoimgui.png)

## New features

### Old Squad HUD
You can now switch to the OG:NT-style squad/round HUD by using the convar: `neo_cl_squad_hud_original 1`. The 
squad stars scaling can be tweaking using `neo_cl_squad_hud_star_scale`, using `1` to scale from 1080p.

### Mirror team damage
Mirror team damage feature is now in with multiple server-side convars to tweak it. By default this is turned on with
a 2x multiplier, 7 seconds duration, and immunity for the victim players. The duration is only from the start of a
round, then team damage/kills goes on as normal. The new convars for these settings are as follows:

* `neo_sv_mirror_teamdamage_multiplier` - Default: 2, 0 to disable
* `neo_sv_mirror_teamdamage_duration` - Default: 7, 0 for the entire round
* `neo_sv_mirror_teamdamage_immunity` - Default: 1, 0 for no immunity from team damage

### Kick on team kill/damage accumulation
Another feature is the automatic kick on accumulation of team kills or damage. This is disabled by default but if
turned on, it defaults to 600hp and 6 kills as a minimum threshold for kicking the player off the server. this
accumulation is kept throughout a match/map and resets on the next match/map. The new convars for these settings are as follows:

* `neo_sv_teamdamage_kick` - Default 0, 1 to enable kick based on team damages per match
* `neo_sv_teamdamage_kick_hp` - Default 600 - Threshold to kick HP team damages per match
* `neo_sv_teamdamage_kick_kills` - Default 6 - Threshold to kick team kills per match

## General Fixes
Multiple fixes went in, just a quick rundown:

* SourceTV maxplayers fixed
    * Server should no longer report 33 max players for a 32 player server. This was due to the SourceTV bot being added during server startup.
* Removed dismemberment thresholds
* Corrected HUD damage indicators
* Ghosts/capzones fixes
    * Fixed ghost capzone size to match OG:NT
    * Ghost can now be picked up using the use key
* Grenade drawback fixed
* Initial player spawn t-posing fixed
* Ghost HUD visuals corrected
    * When the ghost carrier is moving, the ghost indicator on player's HUD will no longer be laggy/jittery and stay with the carrier more accurately.
* Various underwater behavior fixes
    * Players no longer drain AUX power while underwater
    * Drowning behavior now varies by class, similar to OG:NT

## Infrastructure
The old VPC build system and source code that has gone unused has officially been removed. CMake is the only build system in-place to compile the codebase.

