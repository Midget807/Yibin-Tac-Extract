#announce changing extraction zone           
execute if score #state openExtractZones matches 1 run tellraw @a ["",{"text":"--------------------------------------\n","color":"white"},{"text":" < Extraction point status change >","bold":true,"color":"white"},{"text":"\n"},{"text":"In 1 minute,","italic":true,"color":"gray"},{"text":"\n"},{"text":"The ","color":"white"},{"text":"Mall ","bold":true,"color":"aqua"},{"text":"extraction point will ","color":"white"},{"text":"open","color":"green"},{"text":". \nThe ","color":"white"},{"text":"Sewers ","bold":true,"color":"dark_green"},{"text":"extraction point will "},{"text":"close","color":"yellow"},{"text":". \nThe "},{"text":"Cave ","bold":true,"color":"gold"},{"text":"extraction point will remain open.\n--------------------------------------","color":"white"}]
execute if score #state openExtractZones matches 3 run tellraw @a ["",{"text":"--------------------------------------\n","color":"white"},{"text":" < Extraction point status change >","bold":true,"color":"white"},{"text":"\n"},{"text":"In 1 minute,","italic":true,"color":"gray"},{"text":"\n"},{"text":"The ","color":"white"},{"text":"Mall ","bold":true,"color":"aqua"},{"text":"extraction point will remain open. \nThe ","color":"white"},{"text":"Sewers ","bold":true,"color":"dark_green"},{"text":"extraction point will "},{"text":"close","color":"yellow"},{"text":". \nThe "},{"text":"Cave ","bold":true,"color":"gold"},{"text":"extraction point will ","color":"white"},{"text":"open","color":"green"},{"text":".\n--------------------------------------","color":"white"}]

#schedule these changes so that players get a 1 minute warning.   
execute unless score #state openExtractZones matches 5 run schedule function yibextract:panel/open_mall_extraction 60s
execute unless score #state openExtractZones matches 5 run schedule function yibextract:panel/close_sewers_extraction 60s
execute unless score #state openExtractZones matches 5 run schedule function yibextract:panel/open_cave_extraction 60s
execute unless score #state openExtractZones matches 5 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

#if the configuration is unknown, just open the zones now.   
execute if score #state openExtractZones matches 5 run function yibextract:panel/open_mall_extraction
execute if score #state openExtractZones matches 5 run function yibextract:panel/close_sewers_extraction
execute if score #state openExtractZones matches 5 run function yibextract:panel/open_cave_extraction