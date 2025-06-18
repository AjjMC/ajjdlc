$execute unless data storage ajjdlc:data char_to_byte."$(in_char)" run return fail

$data modify storage ajjdlc:data temp.in_byte set from storage ajjdlc:data char_to_byte."$(in_char)"

function ajjdlc:decoder/convert with storage ajjdlc:data temp

data modify storage ajjdlc:data temp.in_char set string storage ajjdlc:data temp.in 0 1
data modify storage ajjdlc:data temp.in set string storage ajjdlc:data temp.in 1

scoreboard players add #count ajjdlc 1

execute if score #count ajjdlc < #length ajjdlc run function ajjdlc:decoder/loop with storage ajjdlc:data temp