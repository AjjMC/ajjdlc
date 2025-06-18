data remove storage ajjdlc:data temp

$data modify storage ajjdlc:data temp.data set value "$(data)"

function ajjdlc:_decode with storage ajjdlc:data temp

$execute if score #count ajjdlc < #length ajjdlc run tellraw @s [{text:"Unable to decode data; invalid character at position ",color:"red"},{score:{name:"#count",objective:"ajjdlc"}},{text:" in $(data)"}]
execute if score #count ajjdlc < #length ajjdlc run tellraw @s {text:"(Use a single underscore to hide feedback)",color:"yellow"}
execute if score #count ajjdlc < #length ajjdlc run return fail

$tellraw @a [{text:"Decoder Input:\n"},{text:"$(data)",color:"gray"},{text:"\n"}]
tellraw @a [{text:"Decoder Output:\n"},{nbt:"out",storage:"ajjdlc:data",color:"gray"},{text:"\n"}]

tellraw @a {text:"(Use a single underscore to hide feedback)",color:"yellow"}