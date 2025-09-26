title: Alpha v19.0 Release Notes - JGR/Juggernaut Gamemode and various fix/changes
summary: Release notes for Neotokyo; Rebuild Alpha v19
author(s): nullsystem


# Alpha v19.0 Release Note - JGR/Juggernaut Gamemode and various fix/changes
2025-09-26 nullsystem

* [Download v19.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v19.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## JGR Gamemode
Team-based gamemode where you take control of the Juggernaut (robot) as long as possible per round to win.
The team(s) without the Juggernaut will respawn, with the mech will not respawn.

At the start of each round, the Juggernaut will spawn in and like the ghost will be visible in the HUD, once someone
is controlling the Juggernaut, it will not show up in the HUD.
When you're by the Juggernaut, hold use to take control then when inside try to stay alive for as long as
possible to rack up points. The Juggernaut is equipped with a big machine gun and is much
larger than a player.

## Player pings
There is now a ping feature to point to an area/specific place to notify other teammates.

## NextBots
* Spectator now have the ability to take over bots and AFK players
    * Press the use key on a bot of your own team to take over
* Bot profiles to customize and define bots by class, weapons, and difficulty
* Bot can now shoot through glass (any distance) and penetrateables (against a player holding a ghost)
* UI - Show bot difficulty option new game
* Shoot at visible parts rather than just the center, hard/expert bots priorities head aiming

## HUD changes
* Various UI fixes for the killer/damager HUD
* Fix custom crosshair mis-alignment at odd-numbered thickness pixels
* Dynamic crosshair, shows weapon spray and movement inaccuracy
* Remove assister from suicide with assist notice, reverse highlight and non highlight colours
* Remove scoreboard borders
* Hide squad list and killfeed if the scoreboard is showing
* Use class name for the killer/damager info, unify name for all neo_npc_targetsystem
* Don't show gamemode description during warmup
* Option to make the round info and scoreboard HUD not swap team sides
* Fix seeing enemy team in squad HUD, scoreboard becoming misaligned with round info
* Always draw match status over gamemode description
* Change killer/damager info to match HUD style, adds ability to do custom positioning

## Main menu UI changes
* Change NeoUI font from Neuropol and Green Mountain to Montserrat
* Add ability to blacklist servers by IP and server name
* Add ability to add and remove server favorites
* Legacy/fallback gamepad NeoUI navigation, controller settings, and removed legacy UI button
* Secondary keybind in the settings menu
* NeoUI - External popup menus
* Fix disconnected menu prompt
* Named background map options
* Zoom sensitivity ratio in settings
* Show loading screen if unsure what map we're loading into

## General fixes/changes
* Fix no ghost pick up sound when picking up weapon with use key while primary weapon in inventory
* Remove weapons and gibs after some time on maps with respawns enabled
* Zero out ragdoll velocity if ragdoll is settled, refactor ragdoll velocity
* Fix music playing randomly after previous song paused during gameplay
* Remove references to `gamestartup1`, use `snd_victory_volume` for jingle when changing volumes during jingle
* Fix dangling gamerules ghost pointer
* Remove tachi mode switch console message
* Fix muzzle flash appearing when scoped
* Parity SetTeam input for players

## Mapping
* Soundscapes for `nt_terminal_ctg`

## Developer works
* Refactor loadout source code and rearrange headers
* Cleanup GCC compiler warnings + `VEC_` `neo_bot_body` overrides
* Refactor weapon infos to use X macro, XP related funcs refactor

## Documentation
* Linux - document to also copy rename jitte NT directory
* Sync SDK license legalese with official upstream
* Fix README grammar and improve phrasing

