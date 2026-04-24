function yibextract:constants
function yibextract:extraction/init
function yibextract:deployment/init
function yibextract:gtfo/init
function yibextract:clock/stop_clock

#(silently) close all extract points and disallow deploying
scoreboard players set #mall openExtractZones 0
scoreboard players set #sewers openExtractZones 0
scoreboard players set #cave openExtractZones 0
scoreboard players set #canDeploy canDeploy 0

scoreboard players set #stopGame constants 0 
scoreboard players set #gameRunning constants 0 

tellraw @a [{"text":"Datapacks loaded","color":"yellow","bold":true}]

tellraw @a [{"text":"\nStart the session with /function yibextract:start_game\n","color":"aqua"}]