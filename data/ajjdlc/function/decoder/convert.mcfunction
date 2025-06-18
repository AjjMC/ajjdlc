$data modify storage ajjdlc:data temp.sequence set value "$(sequence)$(in_byte)"

data modify storage ajjdlc:data temp.out_char set value ""
data modify storage ajjdlc:data temp.out_byte set value ""
data modify storage ajjdlc:data temp.out_byte set string storage ajjdlc:data temp.sequence 0 8
data modify storage ajjdlc:data temp.sequence set string storage ajjdlc:data temp.sequence 8

function ajjdlc:decoder/byte_to_char with storage ajjdlc:data temp