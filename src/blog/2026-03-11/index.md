title: Alpha v28.1 Release Notes
summary: Release notes for NEOTOKYO;REBUILD v28.1
author(s): kinoko


# Alpha v28.1 Release Notes
2026-03-11 kinoko

* [Download v28.1-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v28.1-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes/additions
* Changes to cloak to bring it closer to parity
* Fixed sometimes being able to see ghost beacons during death animation
* Fixed the player being able to stay scoped while the SRS bolt racking animation was playing
* Rework to BALC3:
 *  Added ADS to the gun
 *  Added impact grenade alt fire mode, which can bounce off walls
 *  Buffed base damage from 25 to 36
 *  Buffed penetration
 *  Increased clip size from 40 to 50
 *  Tweaked the accuracy
 *  Weapon now cools faster underwater
 *  Replaced sounds
 *  Fixed prediction for the gun

## Bot related fixes/changes/additions
* Bots no longer use smoke for concealment if they are not a Support
 
## Map fixes/changes/additions
* Changed various physics props to static/debris on Rise, Rogue, Saitama, Shrine and Threadplate
* Added a ghost clip to the deep water at beach/boat cap on Rogue to prevent the ghost from getting stuck
* Added parallax corrected cubemaps to some areas on Threadplate and Saitama
* Lighting adjustments and visibility optimizations on Saitama
* Clipped off the bridge sides on Shrine for navmesh convenience
 
## HUD fixes/changes/additions
* Replaced the steam avatars with class icons on the new HUD
* Match points are now displayed on the HUD as "Do or die" when a tie would be enough for the leading team to win
* Fix player's team not drawing when in Alpha squad
* NSF players whos class is unknown now use the correct team icon in the new squad HUD
 
## UI fixes/changes/additions
* Improved readability of killer info and damage report
* Refactored crosshair serialization
* Names longer than max name length defined in IFF marker are now defined

## General fixes/changes/additions
* Raised the particle limit, more smokes can be active concurrently
* Added customizable rate limit for cloak and vision when bound to mouse wheel
* Reverted r_drawviewmodel back to a cheat protected command
* Added various spectating related commands
* Fixed JGR bleeding
* Added a new sound effect when pressing +use, replacing the default HL2 sound effect
* Fixed vision modes not displaying properly when spectating a match through SourceTV
* Gave the TGRs a good brushing
