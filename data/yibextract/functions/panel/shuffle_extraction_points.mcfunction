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

#if rng picks the current state of extract zones, tell players:

#state 1
execute if score #rngpick shittyrng matches 1 if score #rngpick shittyrng = #state openExtractZones run tellraw @a ["",{"text":"--------------------------------------","color":"white"},"\n",{"text":" < Extraction point status alert >","bold":true,"color":"white"},"\n",{"text":"Extraction points remain unchanged... for now.","italic":true,"color":"gray"},"\n",{"text":"The ","color":"white"},{"text":"Mall ","bold":true,"color":"aqua"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"closed","color":"yellow"},{"text":". \nThe ","color":"white"},{"text":"Sewers ","bold":true,"color":"dark_green"},"extraction point will remain ",{"text":"open","color":"green"},". \nThe ",{"text":"Cave ","bold":true,"color":"gold"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"open","color":"green"},{"text":".\n--------------------------------------","color":"white"}]
#state 2
execute if score #rngpick shittyrng matches 2 if score #rngpick shittyrng = #state openExtractZones run tellraw @a ["",{"text":"--------------------------------------","color":"white"},"\n",{"text":" < Extraction point status alert >","bold":true,"color":"white"},"\n",{"text":"Extraction points remain unchanged... for now.","italic":true,"color":"gray"},"\n",{"text":"The ","color":"white"},{"text":"Mall ","bold":true,"color":"aqua"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"open","color":"green"},{"text":". \nThe ","color":"white"},{"text":"Sewers ","bold":true,"color":"dark_green"},"extraction point will remain ",{"text":"closed","color":"yellow"},". \nThe ",{"text":"Cave ","bold":true,"color":"gold"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"open","color":"green"},{"text":".\n--------------------------------------","color":"white"}]

#state 3
execute if score #rngpick shittyrng matches 3 if score #rngpick shittyrng = #state openExtractZones run tellraw @a ["",{"text":"--------------------------------------","color":"white"},"\n",{"text":" < Extraction point status alert >","bold":true,"color":"white"},"\n",{"text":"Extraction points remain unchanged... for now.","italic":true,"color":"gray"},"\n",{"text":"The ","color":"white"},{"text":"Mall ","bold":true,"color":"aqua"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"open","color":"green"},{"text":". \nThe ","color":"white"},{"text":"Sewers ","bold":true,"color":"dark_green"},"extraction point will remain ",{"text":"open","color":"green"},". \nThe ",{"text":"Cave ","bold":true,"color":"gold"},{"text":"extraction point will ","color":"white"},"remain ",{"text":"closed","color":"yellow"},{"text":".\n--------------------------------------","color":"white"}]
execute if score #rngpick shittyrng = #state openExtractZones as @a at @a run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
