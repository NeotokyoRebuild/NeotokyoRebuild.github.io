title: Alpha v13.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v13.0
author: brysondev

# Alpha v13.0 Release Note
2025-03-06 brysondev

* [Download v13.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v13.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## New features

### Tutorial Maps

Players now have the option to launch tutorial maps from the main menu. They include various 
instructions on how to play NEOTOKYO°, including a new dummy NPC and custom tutorial hints.

Please be aware that these maps are still a work-in-progress, please let us know of any issues 
you come across while trying it out.

### VScript Support

Neotokyo; Rebuild now has [VScript](https://developer.valvesoftware.com/wiki/VScript) support using the [Squirrel](https://developer.valvesoftware.com/wiki/Squirrel) scripting language.

## UI changes

* Original voice icon for push-to-talk has been restored
* Various HUD improvements
    * `squad_hud_original` is enabled by default
    * Display round info even when squad_hud_original is enabled
    * Add `squad_hud_original` to the settings menu as 'Classic squad list'
    * Show non-squad members in smaller text below squad members
    * Change `squad_hud` cvar prefixes from `neo_cl` to `cl_neo`
    * Add smaller and large HudOCR font used by the round info and classic squad list
    * Make rounded corners match OGNT, and configurable in `HudLayout.res`
    * Change 'AUX' to 'AUX POWER'
* Button on main menu to launch new tutorial map

## General fixes/changes

* Normalization of line endings after TF2-SDK port
* Consolidated the player colision commands into a single command (`sv_neo_player_collisions`)
* Detpack fixes
    * No longer inherit owner's velocity
    * Viewmodel corrected while sprinting
    * Detpacks no longer float in the air when placed on occasion
* Ghost markers and beeps now present in spectator
* Ghost pickup sound audible for all players
* Fixed line endings for new server browser UI (Windows)
* Movement and weapon scaling is now parity
