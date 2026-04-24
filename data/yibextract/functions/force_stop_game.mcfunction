#(silently) close all extract points and disallow deploying
scoreboard players set #mall openExtractZones 0
scoreboard players set #sewers openExtractZones 0
scoreboard players set #cave openExtractZones 0
scoreboard players set #canDeploy canDeploy 0

scoreboard players set #stopgame constants 0 
scoreboard players set #gameRunning constants 0 

tellraw @a {"text":"Session stopped.","bold":true,"color":"dark_purple"}
