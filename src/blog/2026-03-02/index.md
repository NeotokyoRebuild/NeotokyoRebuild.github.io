title: Alpha v27.1 Release Notes
summary: Release notes for NEOTOKYO;REBUILD v27.1
author(s): kinoko, FCC


# Alpha v27.1 Release Notes
2026-03-02 kinoko, FCC

* [Download v27.1-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v27.1-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Gameplay fixes/changes/additions
* Changes to vision mode shaders to bring them closer to parity
* Fixed viewmodels not disappearing when scoped 
* Fixed projectiles getting stuck to geometry
* Fixed snipers not going invisible when a spectate target zoomed in
* Fixed the player camera leaning when observing in third person
* Players now properly bleed when shot by other players
* Increased post-round chat time to 15 seconds

## Gamemode fixes/changes/additions
* Fixed `neo_restart_this` resetting the gamemode to CTG on non-CTG maps

## Bot related fixes/changes/additions
* Bots now throw grenades from cover
* Recon bots now utilize super jump for faster map traversal
* Bots can now climb ladders
* Bots now use smokes as concealment when retreating from threats without thermal vision
* Bots now actively investigate gunfire sounds during search behaviors
* Bot can now always see the ghost carrier, regardless of cloak state
* Bots now follow the NAV_MESH_CROUCH attribute in map nav meshes
* Fixed bot CTG navigation stuttering that occurred during breakaway runs
* Server skips automatically adding bots if a map has no navmesh
* Updates to bot pathing to discourage moving through deadly hazard areas

## Experimental Bot Weapons Trading Behavior

* Bots can now trade or donate their primary weapon with their commander
* To trigger this behavior, look at a bot follower while you do not have a primary weapon in your inventory
* Requires enabling the bot commanding feature with ConVar `sv_neo_bot_cmdr_enable 1`, and pressing use on friendly bots to collect them as followers
* Known issue: Bot followers can sometimes crowded too close for this behavior, so place a waypoint ping to move followers to an optimal throwing distance.
 
 ## Map fixes/changes/additions
 * Fixed navmesh paths in Oilstain and Dawn/Dusk
 * Reduced the generation step size of `nav_generate` to create more precise nav area connections
 
## HUD fixes/changes/additions
* Added a medium verbosity option to the extended killfeed (displays kills and objective captures) - enabled by default
* Fixed the damage report background transparency
* Fixed HUD transparency
* Removed black bars when spectating
* Post round timer now displays the actual time left until the next round instead of the full remaining round time
* Match point and Sudden Death messages no longer display before the start of a new round

## UI fixes/changes/additions
* Fixed chat and scoreboard text size on Linux

## General fixes/changes/additions
* Changed default network setting values
* Update game name stylization
* Fixed screen size change breaking brightness
* Reduced various console spam
* Inspected the elevator shaft and the out of order elevator on Rise

