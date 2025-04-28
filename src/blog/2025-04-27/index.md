title: Alpha v15.0 Release Note
summary: Release note for Neotokyo; Rebuild Alpha v15.0
author(s): kinoko

# Alpha v15.0 Release Note
2025-04-27 kinoko

* [Download v15.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v15-alpha)

* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay changes/fixes

* Recompiled all vanilla NT maps with native Source 2013 tools 
* Various fixes to aforementioned maps (**no changes to base layouts**)
* Fixed weapons falling through the floor
* Various fixes to smoke grenades
* Fixed props not being penetrable
* Removed phantom ghost beeps
* Fixed viewmodels becoming dark when standing close to and facing a wall
* Fixes to Supa-7 and grenade viewmodel animations
* Fixed non-local player sprays not showing up

## UI changes

* Added new events to the killfeed: Ghost capture, VIP extraction and player rank ups are now displayed
* All textures used in the killfeed have been converted to font characters
* Fixed broken unicode text in killfeed 
* Refactored and improved layout handling
* Fixed NeoUI spray issues

## General fixes/changes

* Fixes to projected textures
* Fixed nullptr dereference causing crash on environmental deaths
* Steam networking is now disabled by default
* Added func\_detail\_blocker support
* Added a countdown stage before the match starts if neo\_sv\_comp is enabled
* Changed the short pause duration to 1 minute
* Pauses are now automatically enabled if neo\_sv\_comp is enabled
* Added bot-only warmup skip logic
* Improvements to rain
* Added a option to loop env_muzzleflash
* Added an OnCompetitive output to neo\_game\_config
* Made the tutorial more helpful

## Documentation & Automation
* Added detail.vbsp to gitignore
