# A DLC Library for Minecraft Mapmaking

> **AVAILABLE ON 1.21.6**
>
> **[CLICK HERE TO DOWNLOAD](https://github.com/AjjMC/ajjdlc/archive/refs/heads/main.zip)**
>
> **For any queries, please use the issues section.**

## Overview

This datapack allows mapmakers to use the Mojang API for retrieving player data through the skin servers.

## Installing

After this datapack has been added to the "datapacks" folder of a Minecraft world, ``/reload`` needs to be run in-game. A list of the datapack's commands is available via ``/function ajjdlc:__help``. By convention, all functions run directly by the mapmaker start with two underscores. Functions starting with a single underscore are aliases that do not give any feedback messages in the chat. These are meant to be used by the mapmaker as part of their own map's datapack. Any functions not listed here are internal and are not meant to be used.

| Function                                              | Description                                            |
|:------------------------------------------------------|:-------------------------------------------------------|
| ``/function ajjdlc:__crediting``                      | Displays datapack crediting information                |
| ``/function ajjdlc:__decode {data:<input_data>}``     | Decodes Base64-encoded data                            |
| ``/function ajjdlc:__help``                           | Displays datapack command list                         |
| ``/function ajjdlc:__install``                        | Installs datapack                                      |
| ``/function ajjdlc:__manual``                         | Displays datapack manual link                          |
| ``/function ajjdlc:__queryname {name:<player_name>}`` | Retrieves Base64-decoded value from query              |
| ``/function ajjdlc:__queryid {id:<player_uuid>}``     | Retrieves Base64-decoded value from query              |
| ``/function ajjdlc:__uninstall``                      | Uninstalls datapack                                    |
| ``/function ajjdlc:__version``                        | Displays datapack version                              |
| ``/function ajjdlc:_decode {data:<input_data>}``      | Runs ``/function ajjdlc:__decode`` without feedback    |
| ``/function ajjdlc:_queryname {name:<player_name>}``  | Runs ``/function ajjdlc:__queryname`` without feedback |
| ``/function ajjdlc:_queryid {id:<player_uuid>}``      | Runs ``/function ajjdlc:__queryid`` without feedback   |

## Querying Data

> [!NOTE]
> More information on the [Minecraft Wiki](https://minecraft.wiki/w/Mojang_API#Query_player's_skin_and_cape).

## Base64 Decoder

## Crediting

Made by Ajj and published under the MIT license. Please share the repository link.
