$data modify storage ajjdlc:data temp set value {in:"$(data)",out:"",sequence:""}

scoreboard players set #count ajjdlc 0
execute store result score #length ajjdlc run data get storage ajjdlc:data temp.in

data modify storage ajjdlc:data temp.in_char set string storage ajjdlc:data temp.in 0 1
data modify storage ajjdlc:data temp.in set string storage ajjdlc:data temp.in 1

function ajjdlc:decoder/loop with storage ajjdlc:data temp

execute if score #count ajjdlc < #length ajjdlc run return fail

data modify storage ajjdlc:data out set from storage ajjdlc:data temp.out