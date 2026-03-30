title: Alpha v28.4 Release Notes
summary: Release notes from NEOTOKYO;REBUILD Alpha v28.2 to Alpha v28.4
author(s): kinoko


# Alpha v28.2 to Alpha v28.4 Release Notes
2026-03-27 kinoko

* [Download v28.4-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v28.4-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes/additions
 * Fixed penetration related issues
 * Fixed a bug where the server would crash if a player holding the ghost would die near a retrieval zone
 * Fixed suicides not giving assists if the player who killed themselves was previously damaged by another player
 * Added new commands `cl_neo_grenade_show_path` and `sv_neo_grenade_show_path`
	* When `cl_neo_grenade_show_path` is enabled, spectators will be able to see trails which follow a grenade's path
	* When `sv_neo_grenade_show_path` is enabled, all players are be able to see trails which follow a grenade's path. This command requires sv_cheats to be enabled.

## Mapping related fixes/changes/additions
* Fixed env_sun being hidden when under the center of view
 
## HUD fixes/changes/additions
* Fixed texture sizes not updating immediately when changing the values for `cl_neo_squad_hud_avatar_size`
	* Same fix also applies for `cl_neo_hud_centre_size`, `cl_neo_hud_centre_ghost_cap_size`, and `cl_neo_hud_centre_ghost_marker_size`
* Fixed spectators seeing different crosshairs from the player's actual crosshair  
 
## UI fixes/changes/additions
* Slightly adjusted the UI for spectators
* Fixed the `demoui` smoother buttons being unreactive

## General fixes/changes/additions
* Added a new server convar: `sv_neo_server_autorecord` - when enabled, a SourceTV demo will be recorded from the moment a round starts to when the event game_end is triggered
* Fixed server-side auto recording causing servers to crash
* Fixed `spec_next`/`spec_prev` not skipping dead players in demo replays
* Various changes for a smoother demo watching experience
