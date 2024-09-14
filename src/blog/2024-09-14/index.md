title: Pre-Alpha v8.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v8.0
author: nullsystem

# Pre-Alpha v8.0 Release Note
2024-09-14 nullsystem

* [Builds download + changelog](https://github.com/NeotokyoRebuild/neo/releases/tag/v8.0-prealpha)

## Highlights

### Weapon spread and recoil
Spread and recoil changes are now in-place and is parity/close to to OG:NT. There is now a difference
between hip fire and ADS, giving a more tighter spread for ADS.

### New main menu
The main menu got an entire overhaul replacing the standard Source main menu with a custom replacement. The settings,
server browser, new games, popups, and player lists got replaced. The work on the UI is currently on-going and while
the server browser is missing some extras, it is usable enough to replace the old UIs currently. However, the "legacy"
windows can be accessed in the server browser and settings by the "legacy" button on the bottom.

Here's a screenshot of the settings page:

[![Options menu with the new overhaul GUI](neoimgui.png_thumb.png)](neoimgui.png)

For the rest, load up NT;RE Pre-Alpha v8.0 and see for yourselves.

## New features

### Old Squad HUD
You can now switch to the OG:NT-style squad/round HUD by using the convar: `neo_cl_squad_hud_original = 1`. The 
squad stars scaling can be tweaking using `neo_cl_squad_hud_star_scale`, using `1` to scale from 1080p.

### Mirror team damage
Mirror team damage feature is now in with multiple server-side convars to tweak it. By default this is turned on with
a 2x multiplier, 7 seconds duration, and immunity for the victim players. The duration is only from the start of the
round, after that team damage/kills goes on as normal. New convars to tweak the settings:

* `neo_sv_mirror_teamdamage_multiplier` - Default: 2, 0 to disable
* `neo_sv_mirror_teamdamage_duration` - Default: 7, 0 for the entire round
* `neo_sv_mirror_teamdamage_immunity` - Default: 1, 0 for no immunity from team damage

### Kick on team kill/damage accumulation
Another feature is the automatic kick on accumulation of team kills or damages. This is disabled by default but if
turned on, defaults to 600hp and 6 kills as a minimum threshold for kicking the player off the server. This
accumulation is kept throughout a match/map and resets on the next match/map. New convars to tweak the settings:

* `neo_sv_teamdamage_kick` - Default 0, 1 to eanble kick based on team damages per match
* `neo_sv_teamdamage_kick_hp` - Default 600 - Threshold to kick HP team damages per match
* `neo_sv_teamdamage_kick_kills` - Default 6 - Threshold to kick team kills per match

## Fixes
Multiple fixes went in, just a quick rundown:

* SourceTV maxplayers fix
    * Should no longer have 33 players slot intended for 32 players due to SourceTV bot
* Remove dismember thresholds
* Correct HUD damage indicators
* Ghosts/capzones fixes
    * Fix ghost capzone capping size to match OG:NT
    * Ghost can now be picked up using the use key
* Grenade drawback fix
* Initial spawn T-Posing fix
* Smoother ghost HUD visual
    * When the ghost is moving, the HUD ghost indicator will no longer be laggy/gittery
* Underwater Fixes
    * No longer drain the AUX
    * Drowning behavior now varies by class similar to OG:NT

## Infrastructure
The old VPC build system and source code that are unused has now been removed. CMake is the only build system in-place
and used now.

