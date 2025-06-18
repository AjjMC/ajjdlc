execute unless data storage ajjdlc:data version run tellraw @s [{text:"Unable to get version; ",color:"red"},{text:"ajjdlc",color:"gray"},{text:" is not installed",color:"green",click_event:{action:"suggest_command",command:"/function ajjdlc:__install"},hover_event:{action:"show_text",value:"Click Here"}}]
execute unless data storage ajjdlc:data version run return fail

tellraw @s {nbt:"version",storage:"ajjdlc:data",color:"gray"}