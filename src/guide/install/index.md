title: Guide - Install NT;RE (Client)

# Guide - Install NT;RE (Client)

## Operating System Requirement

Only Windows and Linux is supported. Generally aimed to work with
Windows 10+ and any Linux distros that works with the SteamRT
3.0 "sniper" runtime. [This document](https://gitlab.steamos.cloud/steamrt/steam-runtime-tools/-/blob/main/docs/distro-assumptions.md)
gives a comprehensive rundown on SteamRT's assumptions on Linux.
On Linux, NT;RE is supported natively. Running it through Proton
is not supported by NT;RE.

## Original NEOTOKYO Assets

NT;RE relies on (original) NEOTOKYO's assets to function. On Steam, just
download and install [NEOTOKYO](steam://rungameid/244630) regardless of Windows
or on Linux. Later when NT;RE starts up, it will try to find those files
automatically if possible and mounts them.

## Source SDK 2013 Multiplayer

Install [Source SDK Base 2013 (MP) Multiplayer](steam://rungameid/243750) (AppID: 243750)

## Downloading NT;RE

Go into [Releases page](https://github.com/NeotokyoRebuild/neo/releases)
of the NT;RE GitHub repository and pick the highest versioned release
(EX: v7.1).
There's also a release that's generally will be on top called "Latest Build"
however this is just builds straight from the master branch which typically
won't be used for playtests.

Click on the "Assets" dropdown and should see a list of files available to
download. There's only two files needed for play NT;RE:

* `neo-YYYYMMDD-GITHASH-resources.zip`
    * EX: `neo-20240803-273dbf3-resources.zip`
* `neo-YYYYMMDD-GITHASH-libraries-[Windows/Linux]-Release.zip`
    * EX: `neo-20240803-273dbf3-libraries-Windows-Release.zip`

The rest can be ignored as `debuginfo` is for developers to debug crash dumps
and `dedicated` is for servers.

## Installing NT;RE

Locate the `sourcemods` directory. Assuming the default installation paths
(adjust if needed if Steam is installed elsewhere):

* Windows: `C:\Program Files (x86)\Steam\steamapps\sourcemods`
* Linux: `$HOME/.steam/steam/steamapps/sourcemods`

Extract `...-resources.zip` first, there should be a directory called `neo`
in the `sourcemods` directory now along with NT;RE's specific assets.

Then `...-libraries-[Windows/Linux]-Release.zip` from the location of the
`sourcemods` directory. This should extract the binaries in `neo/bin`.

## Loading NT;RE

Open (or restart) Steam then "Neotokyo: Rebuild" should popup as an installed
game. From here, just startup the game and it could go fine generally for
standard setups. However if you have issues... 

## Troubleshooting

### Cannot mount original NEOTOKYO assets

#### Windows

This could happen if you have NEOTOKYO/Steam installed at a non-default 
location. Open up "Properties..." then launch options and set to your 
custom install path:

```
-neopath C:\PATH\TO\YOUR\NEOTOKYO\NeotokyoSource\
```

#### Linux

`-neopath` doesn't work properly on Linux, just make sure the original
assets is in one of the following paths (from the order of path priority):

1. ~/.steam/steam/steamapps/common/NEOTOKYO/NeotokyoSource/
2. ~/.local/share/neotokyo/NeotokyoSource/
3. /usr/share/neotokyo/NeotokyoSource/

### Linux - Force SteamRT 3.0

This is not required, however if you want to make NT;RE run under the
SteamRT 3.0 runtime:

Ensure ["Steam Linux Runtime 3.0 (sniper)"](steam://rungameid/1628350) is installed, then
set the launch options:

```
steam-runtime-launch-options -- %command%
```

When NT;RE is launched, a Window with options should popup. On the top
"Container runtime" option change from "None" to "sniper 0.YYYYMMDD.VERSION"
then click "Run". This will popup everytime NT;RE is started through Steam.

