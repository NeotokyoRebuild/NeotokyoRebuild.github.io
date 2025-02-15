title: Pre-Alpha v11.0 Release Note
summary: Release note for Neotokyo; Rebuild Pre-Alpha v11.0
author: kinoko

# Pre-Alpha v11.0 Release Note
2025-02-14 kinoko

* [Download v11.0-prealpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v11.0-prealpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## New features

### Automatic lean

Players now have the option to enable automatic leaning. This prevents the use of manual leaning. Option can be changed in the options menu, or by typing `cl_neo_lean_automatic 1` in the developer console.

## New additions

* Added an experimental toggle for weapon viewkick `sv_neo_dynamic_viewkick` (off by default). Makes the weapon's viewkick proportional to the inaccuracy - the longer you shoot, the more viewkick there is.

## Gameplay changes/fixes

* Thermal and motion vision have been reworked to act and look more like they do in original NEOTOKYO°
* Ghosthopping has been disabled, following the same methodology as rain's anti-ghosthopping plugin except using the player's max speed before slowdown from landing as a non-recon
* Grenade behavior is now closer to original NEOTOKYO°
* Jitte hip fire spread has been fixed, the maximum hip spread has been decreased from 10 degrees to 7 degrees
* Killfeed has been reworked to use weapon specific icons (icons for explosive and headshot kills are still used)
* Camera fade to black after dying has been fixed
* Corpses do not A-pose anymore
* Penetration and damage for slugs have been fixed
* Fixed a case where two bullets were fired in the same frame
* Fixed vision modes on maps that use colour correction and/or HDR
* Walk key can now be toggled
* Fixed grenades to not cause the player's screen to shake as it was not parity
* General movement fixes to more resemble the movement in original NEOTOKYO° (do note that there are still minor changes to be made to reach movement parity)
* Player camera does not stay leaned anymore after death
* Fixed the ghost not playing beeps for nearby enemies when picked up 
* Leaning whilst sprinting has been disabled
* Fixed players being able to respawn during the round 
* Fixed the ghost distance marker being displayed whilst a player was using the ghost
* Fixed the player's viewmodel disappearing whilst rapidly switching/dropping guns
* Several fixes to cloak and cloak mechanics

## UI changes

* The main menu has been changed to a more presentable one
* Added more background options for the main menu, the background can be changed in the options menu

## General fixes/changes

* Fixed friendly markers not showing up after using X-ray mode in spectator
* Added a min and max to cl_showfps 
* Added a filter for player classes
* Changed the way how weapon shadows are drawn to use EF_NOSHADOW
* Changed game_text to be consistent with HUD font
* Fixed steam avatars not displaying properly
* Added a material proxy for getting the team of the entity the material is attached to
* Added an input for setting custom player models
* Refactored the glow effect for spectated players
* Fixed the map preview camera position height
* Fixed the [game_score](https://developer.valvesoftware.com/wiki/Game_score) entity to function like how it does in OGNT 
* Changed the scope color to the correct color for scoped weapons 
* Added neo_bloom_controller for backwards compatibility with older maps
* Fixed the FOV and viewmodel offset of the unsilenced MPN