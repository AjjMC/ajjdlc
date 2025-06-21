# A DLC Library for Minecraft Mapmaking

> **AVAILABLE ON 1.21.6**
>
> **[CLICK HERE TO DOWNLOAD](https://github.com/AjjMC/ajjdlc/archive/refs/heads/main.zip)**
>
> **For any queries, please use the issues section.**

## Overview

This datapack allows mapmakers to retrieve player data through the skin servers.

## Installing

After this datapack has been added to the "datapacks" folder of a Minecraft world, ``/reload`` needs to be run in-game. A list of the datapack's commands is available via ``/function ajjdlc:__help``. By convention, all functions run directly by the mapmaker start with two underscores. Functions starting with a single underscore are aliases that do not give any feedback messages in the chat. These are meant to be used by the mapmaker as part of their own map's datapack. Any functions not listed here are internal and are not meant to be used.

| Function                                              | Description                                            |
|:------------------------------------------------------|:-------------------------------------------------------|
| ``/function ajjdlc:__crediting``                      | Displays datapack crediting information                |
| ``/function ajjdlc:__decode {data:<input_data>}``     | Decodes Base64-encoded data                            |
| ``/function ajjdlc:__help``                           | Displays datapack command list                         |
| ``/function ajjdlc:__install``                        | Installs datapack                                      |
| ``/function ajjdlc:__manual``                         | Displays datapack manual link                          |
| ``/function ajjdlc:__queryname {name:<player_name>}`` | Retrieves Base64-decoded ``value`` from query          |
| ``/function ajjdlc:__queryid {id:<player_uuid>}``     | Retrieves Base64-decoded ``value`` from query          |
| ``/function ajjdlc:__uninstall``                      | Uninstalls datapack                                    |
| ``/function ajjdlc:__version``                        | Displays datapack version                              |
| ``/function ajjdlc:_decode {data:<input_data>}``      | Runs ``/function ajjdlc:__decode`` without feedback    |
| ``/function ajjdlc:_queryname {name:<player_name>}``  | Runs ``/function ajjdlc:__queryname`` without feedback |
| ``/function ajjdlc:_queryid {id:<player_uuid>}``      | Runs ``/function ajjdlc:__queryid`` without feedback   |

## Querying Data

> [!NOTE]
> More information on the [Minecraft Wiki](https://minecraft.wiki/w/Mojang_API#Query_player's_skin_and_cape).

Player data is retrieved using ``/function ajjdlc:__queryname {name:<player_name>}``, which uses a name as input, or ``/function ajjdlc:__queryid {id:<player_uuid>}``, using a UUID Int array instead. Upon requesting the data, the response looks as follows:

```
{
    "id": "a3c12f1a8b254e989e4ee2ff694236af",
    "name": "Ajj",
    "properties": [
        {
            "name": "textures",
            "value": "ewogICJ0aW1lc3R..."
        }
    ]
}
```

where ``value`` is the Base64 encoding of the following:

```
{
    "timestamp": 1750462597883,
    "profileId": "a3c12f1a8b254e989e4ee2ff694236af",
    "profileName": "Ajj",
    "signatureRequired": true,
    "textures": {
        "SKIN": {
            "url": "http://textures.minecraft.net/texture/b5820917b85556384b9cc97073d0a55c07599cabc3f4e4785d93937f8ba887e1"
        },
        "CAPE": {
            "url": "http://textures.minecraft.net/texture/17912790ff164b93196f08ba71d0e62129304776d0f347334f8a6eae509f8a56"
        }
    }
}
```

This is decoded and parsed to store the the NBT compound below in the ``ajjdlc:data out`` NBT tag:

```
{
    profileName: "Ajj",
    textures: {
        SKIN: {
            url: "http://textures.minecraft.net/texture/b5820917b85556384b9cc97073d0a55c07599cabc3f4e4785d93937f8ba887e1"
        },
        CAPE: {
            url: "http://textures.minecraft.net/texture/17912790ff164b93196f08ba71d0e62129304776d0f347334f8a6eae509f8a56"
        }
    },
    profileId: "a3c12f1a8b254e989e4ee2ff694236af",
    signatureRequired: 1b,
    timestamp: 1750462597883L
}
```

## Base64 Decoder

The datapack's Base64 decoder can be used independently on input data with ``/function ajjdlc:__decode {data:<input_data>}``, and the output is stored in the ``ajjdlc:data out`` NBT tag.

## Crediting

Made by Ajj and published under the MIT license. Please share the repository link.
