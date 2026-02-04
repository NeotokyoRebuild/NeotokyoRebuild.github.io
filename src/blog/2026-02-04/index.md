
title: Alpha v21.1 > Alpha v24.0 - Release Notes
summary: Release notes from Neotokyo; Rebuild Alpha v21.1 to Alpha v24.0
author(s): kinoko


# Alpha v21.1 to Alpha v24.0 Release Notes
2026-04-02 kinoko

* [Download v24.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v24.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

We have been so busy working on the game that we have forgotten to post update notes. At least a lot has been done!

## Gameplay fixes/changes/additions

* Added customization for the IFF system
* Added customizable X-ray that is applied to friendlies when alive/spectating them and applied to all players when spectating
* Various fixes for various toggle actions 
* Fixed games not ending if a match is won by hitting the score limit
* Added a trigger reset for semi automatic weapons 
* Fixed projectiles colliding with dropped weapons 
* Fixed sound pool starvation for very rapid gunfire
* Fixed Xray being enabled on maps where IFF elements are disabled
* Fixed viewmodels disappearing 
* Fixed the player getting stuck in leaning when frozen
* Fixed the game crashing when playing Deathmatch games with bots
* Fixed the cloak disable sound from being played after the player has died 
* Fixed the ghost marker being placed on objects which aren't the ghost
* Changed the position of the ghost marker to behave similarly to OGNT when the ghost is carried by players
* Removed bone merge from default items
* Players no longer glow in DM
* Fixed weapon cycle times for various weapons
* Fixed eye angles going out of netprop range
* Fix the crosshair being offset after changing resolutions
* Fixed rounds resetting earlier than they should
* Added recoil to BALC3 and tightened it's accuracy
* Added a per-client cvar `cl_neo_tachi_prefer_auto` for controlling whether a newly spawned Tachi will have its firemode set to single shot or full auto. Set to full auto by default.
* Various changes to bot behavior
* Added debug commands for adjusting the classes of bots
* Added extra color customization for crosshairs
* Added alternative spectator controls
* Addes server side commands for adjusting team scores
* Replaced `neo_aim_hold` with proper keybinds

## Gamemode fixes/changes/additions
Various changes to the JGR gamemode:
* Points are now scored by getting kills as the JGR instead of surviving as the JGR
* JGR is locked for all players for 20 seconds after the round has started
* Instead of spawning the instant the JGR dies, the dead team will spawn after an 8 second cooldown
* Enabled use of comp settings in JGR
* Default round timelimit reduced to match the timelimit in CTG
* Unmanned JGR is now solid, with soft-collide post-death transitions
* Player XP is now reduced only down to 10 XP instead of 0

Added new server side commands for controlling XP rewards in the CTG gamemode:
`sv_neo_cap_reward` - How much XP to reward for capturing the ghost. 0 = Rank up. (Default: 0)  
`sv_neo_cap_reward_dead` - Whether dead players should receive the ghost capture reward. (Default: 0)  
`sv_neo_survivor_bonus` - Whether surviving players on the winning team should receive extra XP. (Default: 1)  
`sv_neo_ghost_carrier_bonus` - Whether the ghost carrier on the winning team should receive extra XP. (Default: 1)

## Map changes
* Added soundscapes for `nt_sentinel_jgr`

## HUD fixes/changes/additions
* Fixed health bars in the new squad list overlapping onto adjacent squad mates and the central timer element
* Text for the damage dealt is no longer colored red if the player was not killed
* Fixed alive player counts being incorrect

## UI fixes/changes/additions
* Fixed the alive player count not updating when the scoreboard is open
* Fixed being able to select multiple UI elements at the same time
* Added an option to pause the MP3 player on game launch and when exiting a level
* Fixed the background map FOV 
* Added background map panning
* Tweaks to the options menu

## Mapping related fixes/changes
* Added neutral ghost capture points
* Disabled wind option for `func_dustcloud` and `func_dustmotes`
* Added Parallax Corrected Cubemap support
* Added radius setting for prop_sphere

## General fixes/changes/additions
* Added basic achievements (only available on the steam install)
* Removed redundant teammate check from player list
* Fixed Steam release script compatibility
* Improved compression of release assets 
* Moved Sourcemod gamedata files to a separate subdirectory
* Added automatic SourceMod gamedata generation
* Fixed Sourcemod gamedata files
* Fixed compiler warnings
* Optimize CollectPlayers memory allocation
* Restocked the vending machines on Bullet


