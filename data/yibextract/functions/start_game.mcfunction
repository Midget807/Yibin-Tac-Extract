scoreboard players set #gameRunning constants 1 

#silently close all extract points (i have my reasons for doing this, trust) 
scoreboard players set #mall openExtractZones 0
scoreboard players set #sewers openExtractZones 0
scoreboard players set #cave openExtractZones 0

#stop all scheduled function
schedule clear yibextract:panel/open_mall_extraction
schedule clear yibextract:panel/close_mall_extraction
schedule clear yibextract:panel/open_sewers_extraction
schedule clear yibextract:panel/close_sewers_extraction
schedule clear yibextract:panel/open_cave_extraction
schedule clear yibextract:panel/close_cave_extraction

#repoen extract points and allow deployment
tellraw @a {"text":"Starting session...","bold":true,"color":"light_purple"}

#restock all zones here

#reset the gtfo event if it is running
function yibextract:gtfo/init 

function yibextract:clock/start_clock
schedule function yibextract:panel/allow_deployment 1t