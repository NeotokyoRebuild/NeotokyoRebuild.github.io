title: Alpha v16.0, v17.0 Release Notes
summary: Release notes for Neotokyo; Rebuild Alpha v16 and v17
author(s): Rain


# Alpha v17.0 Release Note
2025-08-11 Rain

* [Download v17.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v17.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay changes/fixes
* Viewmodel doesn't react to players, moves a bit less on collision
* Fix bug with recon sprint costing AUX
* Fixes and enhancements for SUPA7 actions
* Allow Tachi to change firemode underwater
* Weapons vphysics when created with commands
* Tutorial hint tweaks

## Graphics
* Configurable Xray spectate mode
* Knife impact slash decal
* Don't render glow effect twice, move until after HDR pass so glow colours remain consistent
* More contrast for thermal vision in: dark places, hot things

## UI changes
* Parent the IFF marker from player origin instead of upper body
  * Stops friendly player marker moving left and right when players are leaning
* Use spectate target vision mode in first person only
* NeoUI Main menu - Fix engine tools launch having no mouse reaction
* Set circle crosshair colour always
* Crosshair - Change to single string convar + serialization
* Health as hitpoints option
* Fix round win/tie center HUD element not resizing after resolution change
* Console Fixes
* Add MP3 Player for listening to the game soundtrack while playing

## General fixes/changes
* Improve weapon pickup logic to be more reliable when a weapon spawns at the same location as a player
* Add soundscapes for background maps
* `func_clip_vphysics` crash fix

## Mapping
* Make `trigger_serverragdoll` compatible with human players in addition to NPCs
* Add motion vision detection support for `neo_npc_targetsystem`
* Include TF2 SDK entity additions

## Documentation & Automation
* Remove obsolete CMake options, speed up dedicated server build on Linux
* Add documentation for getting the engine tools working
* Improve VS Studio 2022 instructions

---

# Alpha v16.0 Release Note
2025-08-11 Rain

* [Download v16.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v16.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay changes/fixes
* Enable console and fastswitch by default
* Ghost Spawn Bias
  * Spawn the ghost on odd-indexed rounds at the same place as the previous round in competitive mode
* Viewmodel reacting to obstacles
* Fix players spawning inside eachother
* More lenient lean around corners, harsher unlean when running into a wall
* Report environmental deaths as suicide in killfeed
* Rogue CTG gamemode support

## Graphics
* Add shader detail very high option
* Fix leaned camera clipping at high fov
* Fix black viewmodel bug
* Fix spectate viewmodel missing in some situations

## UI changes
* Option to disable extended killfeed
* Hide all squad star images on disconnect
* `mp_forcecamera` disables glow effect for players
* Archive extended killfeed setting
* Fix broken unicode text in player squad list

## General fixes/changes
* Change default map to one that's available, change default hostname for listen servers
* Fix crash on player disconnect when just killed
* Client/server speed mismatch when carrying ghost fix
* Add Propdata file

## Mapping
* Make spawnpoints toggleable

## Documentation & Automation
* CMake: Show FetchContent output by default