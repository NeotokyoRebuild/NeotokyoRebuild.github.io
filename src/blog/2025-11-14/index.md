title: Alpha v21.0 Release Notes
summary: Release notes for Neotokyo; Rebuild Alpha v21.0
author(s): kinoko


# Alpha v21 Release Note - The big 2-O update
2025-11-14 kinoko

* [Download v21.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v21.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes
* Bullets no longer penetrate through players - this should make the TTK feel closer to OGNT
* Server no longer crashes when a player captures the ghost at match point 
* Spectators can no longer see the ghost beacons before the person they're spectating does
* Fixed the max distance of the ghost beacon
* Synced up the deathcam duration between the client and the server
* Fixed a bug where players were able to enable spectator xray whilst being alive
* Fixed not being able to spawn in JGR
* All dead teammates now instantly spawn when the JGR gets picked up by a friendly player
* JGR's position is now always displayed on the compass
* Fixed the looping boot sound continuing into next round after reset in the JGR gamemode
* Fixes to some JGR related assertions
* Optimized the performance of cloak visibility calculations for bots
* Reduced the likelihood of bots shooting through friendlies
* Players no longer have noodle arms when throwing weapons
* Fixes to loadout related issues

## HUD changes
* Added a unique friendly marker for the JGR and VIP

## UI changes
* Refactored neo_root to not loop around buttons
* Added sound rollover into within the NeoUI API and removed manual handling within neo_root.
* Added antialiasing for the font of the main menu

## Mapping related fixes/changes
* Skybox now reflects in the water (requires water detail to be set to "Reflect All")

## General fixes/changes
* Added class variable support for gamedata generation
* Fixed SM gamedata files
* Added a credits page
* Game can no longer be launched if the DirectX level is set to lower than 9.0
* Fix for "Unable to remove user_custom files"
* Fed some of the TGRs
