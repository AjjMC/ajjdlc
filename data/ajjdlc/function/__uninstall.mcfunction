kill @e[type=minecraft:item_display,tag=ajjdlc.head]

schedule clear ajjdlc:query/main

scoreboard players reset #count ajjdlc
scoreboard players reset #length ajjdlc

scoreboard objectives remove ajjdlc

data remove storage ajjdlc:data byte_to_char
data remove storage ajjdlc:data char_to_byte
data remove storage ajjdlc:data out
data remove storage ajjdlc:data temp
data remove storage ajjdlc:data version

tellraw @a [{text:"Uninstalled "},{text:"ajjdlc",color:"gray"}]