title: Alpha v14.0 Release Note
summary: Release note for Neotokyo; Rebuild Alpha v14.0
author(s): kinoko, brysondev

# Alpha v14.0 Release Note
2025-03-16 kinoko, brysondev

* [Download v14.1-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v14.1-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay changes/fixes

* Smokes now use parity particles
* Third person leaning angle is now parity
* Fixed players respawning instantly in low player count servers
* Various fixes to grenades and detpacks
* Minor fixes for muzzle flash and cloak
* Fixed ghost speech playing after the player had dropped the ghost
* Fixed corpses A-posing
* Fixes for viewmodel only leaning
* Fixes for automatic leaning
* Fixed various bugs related to spectating
* Fixed viewmodel twitching when sprinting with 0 aux
* Fixes for muzzle flash related issues

## UI changes

* Team, class and weapon selection menus now use proper textures
* Team menu now updates when players join/leave/disconnect and when teams score

## General fixes/changes

* Convar naming has been made more consistent
* Added a command to disable sprays server-side `sv_neo_spraydisable`
* Added a command to disable sprays client-side `cl_spraydisable`
* Fixes to sprays
* Added keybind hints for the tutorial
* Changed map prefix for the tutorial
* Pre-round freeze time flavor text does not show up anymore for spectators

## Documentation & Automation

* Updated server instructions
* Updated issue template 
* Sniper docker container is now used for Linux builds
