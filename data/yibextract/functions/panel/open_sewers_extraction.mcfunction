# execute unless score #sewers openExtractZones matches 1 run tellraw @a ["",{"text":"The "},{"text":"Sewers","bold":true,"color":"dark_green"},{"text":" extraction point is now "},{"text":"open","color":"green"},{"text":"."}]

tellraw @a ["",{"text":"The "},{"text":"Sewers","bold":true,"color":"dark_green"},{"text":" extraction point is now "},{"text":"open","color":"green"},{"text":"."}]
execute as @a at @s run playsound create:confirm master @s ~ ~ ~ 1 0.5
scoreboard players set #sewers openExtractZones 1 