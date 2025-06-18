execute unless data storage ajjdlc:data version run tellraw @a [{text:"ajjdlc",color:"gray"},{text:" is not installed",color:"red"}]
execute unless data storage ajjdlc:data version run tellraw @a [{text:"Type "},{text:"/function ajjdlc:__install",color:"green",click_event:{action:"suggest_command",command:"/function ajjdlc:__install"},hover_event:{action:"show_text",value:"Click Here"}},{text:" to install"}]

function ajjdlc:installation/set_version

scoreboard objectives add ajjdlc.temp dummy

execute store success score #temp ajjdlc.temp run data modify storage ajjdlc:data temp set from storage ajjdlc:data version
execute if data storage ajjdlc:data version if score #temp ajjdlc.temp matches 1 run function ajjdlc:__install
execute if data storage ajjdlc:data version if score #temp ajjdlc.temp matches 1 run tellraw @a [{text:"\nUpdated "},{text:"ajjdlc",color:"gray"},{text:" to version "},{nbt:"version",storage:"ajjdlc:data",color:"gray"}]

scoreboard players reset #temp ajjdlc.temp
scoreboard objectives remove ajjdlc.temp