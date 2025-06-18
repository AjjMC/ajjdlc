data remove storage ajjdlc:data temp

data modify storage ajjdlc:data temp.data set from entity @e[type=minecraft:item_display,tag=ajjdlc.head,limit=1] item.components.minecraft:profile.properties[0].value
kill @e[type=minecraft:item_display,tag=ajjdlc.head]

function ajjdlc:_decode with storage ajjdlc:data temp

data modify storage ajjdlc:data temp.in set from storage ajjdlc:data out

data modify storage ajjdlc:data temp.out set string storage ajjdlc:data temp.in 0 30
data modify storage ajjdlc:data temp.in set string storage ajjdlc:data temp.in 30

function ajjdlc:query/concat with storage ajjdlc:data temp