title: Alpha v18.0 Release Notes - NextBot bots, various improvements and fixes
summary: Release notes for Neotokyo; Rebuild Alpha v18
author(s): nullsystem


# Alpha v18.0 Release Note - NextBot bots, various improvements and fixes
2025-08-27 nullsystem

* [Download v18.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v18.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## NextBot bots
[NextBot](https://developer.valvesoftware.com/wiki/NextBot) bots are now ported over to NT;RE! 
They are fairly basic now just going towards the ghost in CTG mode, but otherwise
better to play against than the old bots.
There are also additional features for the bots that have been added on top of the initial port:

* Thermoptic and combat behaviors
* Smoke blocks bots' line of sight
* Running/sprinting
* Aim when shooting
* Automatic lean
* Follows and assists the ghoster when near
* Defend or attack the cap zones

## Gameplay changes/fixes
* Silent walking
* Crosshair is now networked, you can see other players' crosshair
* Improve handling of player sprays:
    * Allow sprays during freezetime
    * Prevent spray impulse if the client disabled sprays
    * Delete custom downloaded sprays on both startup and shutdown
* Ghost boundary - Brush entity to prevent the ghost from being unplayable, will teleport back where the player was last touching the ground
* Changed `mp_forcecamera` default value to 0
* Revert `MAX_PLAYERS` define from 101 to 33
* Change `mp_mapcycle_empty_timeout_seconds` from 0 to 1800 seconds (30 minutes)
* Class/team selection menu fixes
* Fix immediate spawning (which prevents picking a class)
* Make viewmodel not bump with invisible player clips
* Recon super jump parity to OG:NT
* Fix random objects being hot in thermal vision
* Muzzle flash fixes/changes
* Supa reload while sprinting
* Fix weapons dropped appearing pitch black

## HUD changes
* HUD elements ignore texture size
* New killer damage HUD, replacing the previous text-only menu
* Linux - Fixed kill feed font
* Don't draw smoke fog overlay when using spectator xray

## Main menu UI changes
* NeoUI - Added clipboard, selection, and free mouse cursor
* NeoUI - Add right-alignment label/button text support
* Main menu easing
* Revert NeoUI mouse handling change, `-tools` will now instead load up legacy main menu
* Fix UI binding bugs
* Fix keybinds array being too short
* NeoUI refactor and add vertical per row-cell layouting
* Mouse rollover change
* Fix crash in NeoUI root doing specific actions

## New convars
* Add `neo_restart_this` convar, instant version of `mp_restartgame`
* Add `neo_ctg_ghost_beacons_when_inactive` convar, show ghost beacons when ghost isn't the active weapon

## General fixes/changes
* MP3 player
* Removed `autoexec.cfg` and revert `snd_async_fullyasync` to 0
* Spawn players on joining game team or make them spectate
* Source code cleanups
* Keybind support for `neo_message`
* Fix missing sounds the console warns about
* Fix leech sounds playing when they shouldn't
* Fix ammo UI buffer overrun which was causing a crash
* Show hints available in settings menu

## Mapping
* Add `neo_type_converter` entity, lets you convert between parameter types
* `ent_fire player refillammo` to refill a player's clip for mapping/debugging purposes

## Documentation
* Fixed incorrect container paths in README documentation
* Document Linux filename font issue

