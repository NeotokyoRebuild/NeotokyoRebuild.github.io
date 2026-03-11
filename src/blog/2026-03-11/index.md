title: Alpha v28.0 Release Notes
summary: Release notes for NEOTOKYO;REBUILD v28.0
author(s): kinoko


# Alpha v28.0 Release Notes
2026-03-11 kinoko

* [Download v28.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v28.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes/additions
* Cloak is now parity
* Fixed being able to briefly see ghost beacons when dying next to a friendly ghost carrier
* Fixed the player being able to stay scoped while the SRS bolt racking animation was playing
* Raised the particle limit, smokes should no longer disappear

## Bot related fixes/changes/additions
* Bots no longer use smoke for concealment if they are not a Support
 
## Map fixes/changes/additions
* Changed various physics props to static/debris on Rise, Rogue and Threadplate
* Added parallax corrected cubemaps to some areas on Threadplate
 
## HUD fixes/changes/additions
* Replaced the steam avatars with class icons on the new HUD
* Match points are now displayed on the HUD as "Do or die" when playing in a team who is behind points wise
 
## UI fixes/changes/additions
* Improved readability of killer info and damage report
* Refactored crosshair serialization 

## General fixes/changes/additions
* Reverted r_drawviewmodel back to a cheat protected command
* Added various spectating related commands (only work when using the new "counter-strike" HUD)
* Fixed JGR bleeding
* Added a new sound effect when pressing +use, replacing the default HL2 sound effect
* Fixed vision modes not displaying properly when spectating a match through SourceTV
* Gave the TGRs a good brushing