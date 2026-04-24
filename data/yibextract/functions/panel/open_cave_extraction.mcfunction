# execute unless score #cave openExtractZones matches 1 run tellraw @a ["",{"text":"The "},{"text":"Cave","bold":true,"color":"gold"},{"text":" extraction point is now "},{"text":"open","color":"green"},{"text":"."}]

tellraw @a ["",{"text":"The "},{"text":"Cave","bold":true,"color":"gold"},{"text":" extraction point is now "},{"text":"open","color":"green"},{"text":"."}]
execute as @a at @s run playsound create:confirm master @s ~ ~ ~ 1 0.5
scoreboard players set #cave openExtractZones 1 