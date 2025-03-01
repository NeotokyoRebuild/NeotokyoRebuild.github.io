title: Pre-Alpha v12.0 Release Note - TF2 SDK update and now 64-bit!
summary: Release note for Neotokyo; Rebuild Pre-Alpha v12.0
author: nullsystem

# Pre-Alpha v12.0 Release Notes - TF2 SDK update and now 64-bit!
2025-02-26 (Updated: 2025-03-01) nullsystem (Proof-read by rainyan and brysondev)

* [Download v12.0-prealpha build](https://github.com/NeotokyoRebuild/neo/releases/tag/v12.0-prealpha)
* [Install NT;RE (client)](/guide/install/)
* [GitHub Issues (Bug reports and feature requests)](https://github.com/NeotokyoRebuild/neo/issues)

## Source 2013 SDK Update - TF2 SDK Update and 64-bit binary

Valve last week released an update to the Source 2013 SDK also known as the [TF2 SDK update](https://www.teamfortress.com/post.php?id=238809)!
Technically we don't really use any TF2 functionalities, but the upgrade to 64-bit and
10-years worth of changes/bugfixes makes this a very welcome major update for any
mods based on the engine.

NT;RE quickly got ported over in 5 days to the new update and is now here in
v12.0-prealpha! Some notable extras are:

* "Steam Networking" support (ability to host a game without a dedicated server)
* Improved UI scaling from the engine
* Borderless window choosable from the settings menu
* Some performance improvements, and more

### Known Issues

However, it has also brought some issues. First, the distribution of the
dedicated server misplaced the 64-bit srcds binary into the client's directory,
and on Linux, a library and 64-bit version of the run script is missing.
If you're running a dedicated server, you'll need to fetch some files
from the client-side or even TF2's dedicated server. ~~Another known issue,
the Linux dedicated server will just segfault on startup.~~ **UPDATE:**
Linux dedicated server works fine when setup properly.

The Linux client has some regression on picking up fonts with filenames
that are not lowercase such as Neuropol2 and X-Files, so these will
show up as the default fonts on Linux.

On both Windows and Linux, it is now required to put in `-steam` in the
launch options to join VAC-secured servers.

## Other changes

* Lean speed and angle parity
* Fix IFF crosshair showing up too often and crosshair flickering in spectator mode
* Disable thermal vision view model override when using xray
* Fix issues with the viewmodel when switching between third and first person

