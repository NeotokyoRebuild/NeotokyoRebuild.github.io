title: Pre-Alpha v7.0 and 7.1 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v7.0 and 7.1
author: nullsystem

# Pre-Alpha v7.0 and 7.1 Release Note
2024-08-05 nullsystem

* [Builds download](https://github.com/NeotokyoRebuild/neo/releases/tag/v7.1)

This is actually released 2 days ago, but here's the general overview of the
changes that went in since v6.

## Major bug fixes
* Fixed: nullptr dereference on `ClientModeHL2MPNormal::GetViewModelFOV`
* Fixed: Dying/disconnection with ghost causing it to noclip through the ground
* Fixed: HUD timer and states not being updated on new map change
* Fixed: HUD not being updated on resolution change
* Fixed: Duplicate weapon view models
* Fixed: Team/Class/Loadout menu race condition

## Parity features
* Damage modifiers
* Bullet penetration
* Hull/view offsets
* Supa7 firerate
* Coloring: Ghost caps, chat, and HUD
* neuropol2 font used for kill feed
* Ghost uplink + beacons
* Allow ADS while changing weapons

## New features
* Client vs server build integrity check
* Distance/HP in friendly marker, removed old CTargetID HUD
* Throwable keybinds
* Steam and application icons

## Bind changes
* New: Alternate binds for next/prev player spectating
    * `+specnextplayer`, `+specprevplayer`

## Convar changes
* New: Integrity check server-side convars:
    * `neo_sv_build_integrity_check` - Toggle integrity check - Defaults: 1 (Enabled)
    * `neo_sv_build_integrity_check_allow_debug` - Toggle debug clients integrity checking bypass - Defaults: 0 (Disabled)
        * Note: Debug builds will have this enabled by default

## General bug fixes
* First-person player fixes:
    * Crouch jitter
    * Stuck on walls/props while leaning
* Spectator fixes:
    * Stuck lean 3p
    * Previous player button now maps to ADS (AKA defaults to RMB)
    * Death to spectator viewmodel
    * First-person HUD fixes
    * Hide HTA/ammo if observer
* Ghost cap fixes: Round end state HUD
* Chat color bug fixed with too long `neo_name`
* Weapon fixes:
    * Grenade should now able to prime+throw on sprint
    * Supa7 removed side icons
    * Supa7 is now prevented from shooting while sprinting
* Menu (AKA radio menu) fixed maximum 5s timeout
    * Damage info bumped to 60s timeout
* Scoreboard: Fix spectator wrong column

## Infrastructure
* GitHub actions now used for building Windows + Linux builds
* Automatic release for master branch

