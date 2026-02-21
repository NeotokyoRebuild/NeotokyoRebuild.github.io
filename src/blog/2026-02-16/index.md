title: Alpha v25.0 Release Notes
summary: Release notes for NEOTOKYO;REBUILD v25.0
author(s): kinoko


# Alpha v25.0 Release Notes
2026-02-16 kinoko

* [Download v25.0-alpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v25.0-alpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)


## Gameplay fixes/changes/additions

* Fixed gun inaccuracy not properly decaying when a gun was holstered
* Fixed being unable to jump after recrouching during the uncrouching animation
* Fixed not being able to immediately fire the SUPA-7 after loading a shell
* Fixed not being able to detonate the detpack as fast as in OGNT after planting it
* Fixed being able to see the hipfire crosshair when spectating a player in third person
* Fixed SRS quickswitching
* Added tracers for BALC3, MX, PZ
* Various ADS related fixes
* Restored explosion sounds
* `sv_suppress_viewpunch` is no longer locked behind developer builds
*  Migrated old toggle_aim binds

## Gamemode fixes/changes/additions

* Ghost no longer spawns at the same position over multiple rounds when using `sv_neo_ghost_spawn_bias`
* God mode is now applied to players during pauses when playing on a server that has `sv_neo_comp` enabled
* Countdown volume in comp is no longer tied to volume of the Jinrai/NSF victory themes
* Loadout menu no longer disappears when demo recording has started
* Removed the anti-cap suicide deny message 
* Fixed competitive idle map rotation

## Bot related fixes/changes/additions
* Added server cvars for customizing bot cloak detection rates
* Bots no longer crouch unnecessarily when reloading
 
## HUD fixes/changes/additions
* "Effective HP" option is now hidden from the health display options
* Compass is now locked to the player's view when ragdolling

## UI fixes/changes/additions
* General refactoring and QoL improvements to the UI

## Mapping related fixes/changes
* Added a `parallax_obb`  visgroup

## General fixes/changes/additions
* Added coin flip (write .coin in chat to flip a coin)
* Fixed loading packed files on Linux
* Prevented dereferencing NULL m_pWorldRenderList
* Entities are no longer culled for roaming spectators
* Fed the koi fish at Shrine

