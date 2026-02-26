title: Alpha v26.0 Release Notes
summary: Release notes for NEOTOKYO;REBUILD v26.0
author(s): kinoko, FCC


# Alpha v26.0 Release Notes
2026-02-22 kinoko

* [Download v26.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v26.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes/additions

* Added the knife to the Support loadout
* Fixed Assaults not unlocking the M41S at Corporal 
* Fixed not being able to reload right after shooting
* Fixed scoped weapons disappearing when switched to while holding aim
* Fixed being unable to ADS during freeze time
* Smoke particles inside walls are now culled (parity)
* Added an option to disable sounds that are played to client when taking damage. Disabled by default.
* Added `sv_neo_teamdamage_assists` - a server cvar to enable/disable negative assists

## Gamemode fixes/changes/additions

Various changes to the JGR gamemode:

* Rounds now go to overtime if Juggernaut is being activated after the round has ran out of time
* Changed the max score to win to 20 
* Reverted round time limit to 4 minutes
* Teammates of the JGR can now score points (experimental)

## Bot related fixes/changes/additions
* Bots now pick up the ghost in CTG mode, and iteratively share individual enemy positions with their bot teammates
* Bot teammates position themselves relative to the ghoster for protection and scouting behaviors
* Sole survivor bots wait in ambush near the ghost
* Fixed bots trying to shoot the ghoster across voids of a map, or focusing solely on the ghoster without covering threat angles
* Fixed GetSpreadInfo assertion for bot behaviors
 
## HUD fixes/changes/additions
* Fixed bottom-left info color

## UI fixes/changes/additions
* Various UI fixes and improvements

## General fixes/changes/additions
* Added cvars to turn off and tweak intensity of viewmodel bump
* Improvements to third person muzzle flash FX
* Improvements to first person tracers
* Simplified dynamic crosshair calculation
* Fixes for voice chat related issues
* Exorcised the ghost worshipping cult operating out of Saitama
