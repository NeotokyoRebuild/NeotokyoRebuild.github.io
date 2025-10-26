title: Alpha v20.0 Release Notes - The big 2-O update
summary: Release notes for Neotokyo; Rebuild Alpha v20.0
author(s): kinoko


# Alpha v20 Release Note - The big 2-O update
2025-10-26 kinoko

* [Download v20.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v20.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes
* All classes now have different hp pools instead of separate damage resistances being applied to their effective HP - Recons have 100 HP, Assaults 120 HP and Supports 225 HP. This should make the difference between classes less opaque. (This does not change anything balance wise) 
* Adjusted the damage amounts and explosion radiuses of the detpack and grenades to their OGNT values
* Fixed the trajectories of thrown grenades
* Detpacks now behave like they do in OGNT 
* Reverted walking speeds back to parity
* ADS-ing now makes you as silent as if you were walking
* Jinrai and NSF operatives no longer carry over their tinnitus to the next round from an exploded grenade at the end of the previous round (read: Fixed grenade ear-ringing carrying over to next round)
* Fixed the cloak and vision SFX stuttering on high ping
* Fixed the ghost indicator appearing on compass when spectating the ghost carrier
* Fixed the player's head appearing in the death cam
* Fixed the death cam not following the corpse when the corpse was server side
* Fixed the juggernaut creating a server side ragdoll as it should not
* Walking is now automatically toggled off when the player starts sprinting

## HUD changes
* Added `cl_neo_hud_health_mode`, `cl_neo_hud_iff_verbosity` and `cl_neo_hud_iff_healthbars` commands 

## UI changes
* Fixed the loading bar UI vanishing when using a background map
* Cleaned up the ready players center text for comp
* The number of ready players for a competitive match is now printed in chat each time a players readies or unreadies.

## Mapping related fixes/changes
* Added an `IsOfficialMap` marker for all vanilla maps
* Added default hammer configurations for the steam installation 
* Activators can now be used with neo_npc_targetsystem outputs
* Refactored the `neo_game_config` file

## General fixes/changes
* Added a server variable for automatic clientside demo recording 
* Fixed a case where a debug assert at client frame draw would fail before a weapon's dead owner was cleared from the weapon at the following tick
* Fed all the TGRs



