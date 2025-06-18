execute if entity @e[type=minecraft:item_display,tag=ajjdlc.head] run return fail

$summon minecraft:item_display ~ ~-1000 ~ {item:{id:"minecraft:player_head",components:{"minecraft:profile":{name:$(name)}}},Tags:["ajjdlc.head"]}

schedule function ajjdlc:query/main 10t