# Season Manager

Dynamic season management for FiveM servers

## Features

- Dynamic season management based on real-time dates
- Admin command to manually set the season

## Requirements

- FiveM server with ESX Legacy framework
- MySQL database

## Installation

1. Download the script files
2. Place them in your FiveM server's resources folder
3. Add `start season-manager` to your server.cfg file
4. Import the database.sql file into your MySQL database

## Usage

### Commands

| Command | Description | Permission |
|---------|-------------|------------|
| /setseason [season] | Set the current season | admin |

### Permissions

- Admin permission required to use the /setseason command

## Configuration

The script can be configured in the config.lua file. You can set the default season and the weather and time for each season.

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=season-manager&utm_content=bottom) — describe it in one sentence and get the full source code.

