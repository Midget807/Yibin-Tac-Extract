#take the modulus of shittyrng to pick one of three extraction states 
scoreboard players operation #rngpick shittyrng = #shittyrng shittyrng
scoreboard players operation #rngpick shittyrng %= #3 constants  
scoreboard players add #rngpick shittyrng 1

#calculate current state, state #5 = unknown state
scoreboard players set #state openExtractZones 5

execute if score #mall openExtractZones matches 0 if score #sewers openExtractZones matches 1 if score #cave openExtractZones matches 1 run scoreboard players set #state openExtractZones 1
execute if score #mall openExtractZones matches 1 if score #sewers openExtractZones matches 0 if score #cave openExtractZones matches 1 run scoreboard players set #state openExtractZones 2
execute if score #mall openExtractZones matches 1 if score #sewers openExtractZones matches 1 if score #cave openExtractZones matches 0 run scoreboard players set #state openExtractZones 3

#configuration 1: mall closed, sewers open, cave open
#only execute if the state isn't currently state 1  
execute if score #rngpick shittyrng matches 1 unless score #rngpick shittyrng = #state openExtractZones run function yibextract:panel/set_extraction_state_1

#configuration 2: mall open, sewers closed, cave open
#only execute if the state isn't currently state 2  
execute if score #rngpick shittyrng matches 2 unless score #rngpick shittyrng = #state openExtractZones run function yibextract:panel/set_extraction_state_2

#configuration 3: mall open, sewers open, cave closed
#only execute if the state isn't currently state 3  
execute if score #rngpick shittyrng matches 3 unless score #rngpick shittyrng = #state openExtractZones run function yibextract:panel/set_extraction_state_3