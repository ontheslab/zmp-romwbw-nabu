# zmp-romwbw-nabu

Clean RomWBW-based ZMP tree for the NABU option card.

This repo is the working tree for my RomWBW/NABU build. It
started from the upstream RomWBW ZMP app and carries the NABU-specific overlay
and build adjustments needed to test on Les's NABU option card.

## Purpose

- build ZMP for RomWBW on the NABU option card

## Important files

- `ZMO-NABU.Z80` - current NABU overlay source
- `Build-NABU.cmd` - local Windows build script
- `Tools/` - bundled RomWBW `zxcc` and CP/M build tools needed for local builds

## Build

Run:

- `Build-NABU.cmd`

This repo now carries the minimum RomWBW toolchain needed to build locally.

## Current behaviour

- plain `ZMP` auto-selects a serial-capable HBIOS unit
- `ZMP 3` or similar can still force a specific HBIOS unit
- baud configuration is enabled so ZMP can request speed changes through HBIOS

## Related repos

- future planned `zmp_nabu` - separate project for a true NABU serial-card-specific line
