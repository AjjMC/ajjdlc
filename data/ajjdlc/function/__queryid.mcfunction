execute if entity @e[type=minecraft:item_display,tag=ajjdlc.head] run tellraw @s {text:"Unable to query profile; request is already in progress",color:"red"}
execute if entity @e[type=minecraft:item_display,tag=ajjdlc.head] run tellraw @s {text:"(Use a single underscore to hide feedback)",color:"yellow"}
execute if entity @e[type=minecraft:item_display,tag=ajjdlc.head] run return fail

$function ajjdlc:_queryid {id:$(id)}
schedule function ajjdlc:query/message 10t