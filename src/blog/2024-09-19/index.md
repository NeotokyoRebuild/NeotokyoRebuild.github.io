title: Pre-Alpha v8.1 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v8.1
author: nullsystem

# Pre-Alpha v8.1 Release Note
2024-09-19 nullsystem

* [Download v8.1-prealpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v8.1-prealpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

This release is primarily bug fixes, but a few new features went in.

## New features

### First person muzzle flashes

Muzzle flashes now shown in first-persons and tracers are disabled.

### Ghost cap prevention

Ghost cap prevention awards XPs to oppositing team if a player tries to prevent a ghost cap.
Enabled by default using the server-side convar `neo_sv_suicide_prevent_cap_punish 1`.
It will attempt to deal with multiple of scenarios:

* Last-person suicide (`kill` command, grenade, or by environment)
* Last-person disconnect/timeout then reconnect
* Posthumous teamkill: Throw a grenade at your teammate then suicide, final-kill attribute to teammate

## Bug Fixes

* Fixed issue where spread would be halved
* Main menu changes
    * Changed normal font from Neuropol2 to Green Mountain for readability
    * Settings confirmation popup now has a "Cancel" button
    * Workaround old console keybind blocking new console keybind
    * Keybinding behavior now clears duplicates before applying
* Linux-only fixes
    * Fixed shader caching bug causing visions to randomly not work
    * Make `-neopath` parameter work on Linux
* Supa7 changes
    * Use Slugs with no primary ammo
    * Increase slug damage x2.5
* Crash fixes
    * Fix crash at Neo menu constructors
    * Add extra guards against segfault
* Sprinting fixes
    * Sprinting in water, crouch sprinting, speeds touchup
    * Recon aux regen rate halved when sprinting
* Spawning in fixes
    * Force spawning at the start of the round - fixes when dying after round end causes non-spawning
    * SRS Spawns with a round in the chamber
* Revert "replace weapon_switch with ClientCommand"
* Fixed grenades falling through the floor when dropping
* Fixed team/class/weapon menu font at higher resolutions (EX: 1440p) being too bright

