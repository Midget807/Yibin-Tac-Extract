# set isExtracting to 1 if player is in box and in map
execute as @a if score @s inExtractBox matches 1 unless score @s isExtracting matches 1 if score @s inMap matches 1 run scoreboard players set @s isExtracting 1

# if the player leaves the box
execute as @a if score @s isExtracting matches 1 unless score @s inExtractBox matches 1 if score @s inMap matches 1 run execute at @s run playsound create:cardboard_bonk master @s ~ ~ ~ 1 0.8
execute as @a if score @s isExtracting matches 1 unless score @s inExtractBox matches 1 if score @s inMap matches 1 run title @s actionbar [{"text":"EXTRACTION CANCELLED","color":"dark_red","bold":true}]
execute as @a if score @s isExtracting matches 1 unless score @s inExtractBox matches 1 if score @s inMap matches 1 run scoreboard players operation @s extractSecondsLS = #secondsToExtract constants
execute as @a if score @s isExtracting matches 1 unless score @s inExtractBox matches 1 if score @s inMap matches 1 run scoreboard players set @s isExtracting 0

#extract countdown logic/g
execute as @a unless score @s isExtracting matches 1 run scoreboard players operation @s extractTicks = #ticksToExtract constants
execute as @a if score @s inMap matches 1 if score @s isExtracting matches 1 run scoreboard players remove @s extractTicks 1

#convert to seconds (heck you i can't be assed learning how to schedule stuff)
execute as @a run scoreboard players operation @s extractSecondsB = @s extractTicks 
execute as @a run scoreboard players operation @s extractSecondsB /= #20 constants 
execute as @a run scoreboard players operation @s extractSeconds = @s extractSecondsB 

#extract countdown feedback
execute as @a if score @s inExtractBox matches 1 unless score @s extractSeconds = @s extractSecondsLS run title @s actionbar [{"text":"EXTRACTING IN ","extra":[{"score":{"name":"@s","objective":"extractSeconds"}}]}]
execute as @a if score @s inExtractBox matches 1 unless score @s extractSeconds = @s extractSecondsLS run execute at @s run playsound minecraft:block.lever.click master @s ~ ~ ~ 0.7 1.6
execute as @a if score @s inExtractBox matches 1 unless score @s extractSeconds = @s extractSecondsLS run scoreboard players operation @s extractSecondsLS = @s extractSeconds 

#successful extract
execute as @a if score @s extractSeconds matches 0 run scoreboard players set @s inMap 0
execute as @a if score @s extractSeconds matches 0 run scoreboard players set @s isExtracting 0
execute as @a if score @s extractSeconds matches 0 run scoreboard players operation @s extractSecondsLS = #secondsToExtract constants
execute as @a if score @s extractSeconds matches 0 run effect clear @s 
execute as @a if score @s extractSeconds matches 0 run effect give @s minecraft:blindness 2 2 true
execute as @a if score @s extractSeconds matches 0 run effect give @s minecraft:slowness 1 1 true
execute as @a if score @s extractSeconds matches 0 run title @s actionbar [{"text":"EXTRACTED SUCCESSFULLY","color":"green","bold":true}]
execute as @a if score @s extractSeconds matches 0 at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.4 0.8