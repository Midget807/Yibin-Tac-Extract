execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run tellraw @s ["\n",{"text":"Dronestrike has successfully been called in.","bold":true,"color":"red"},"\n",{"text":"An automated strike force is on its way.","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run schedule function yibextract:gtfo_horn/alert_everyone 5s
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run tag @s add caller
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run clear @s minecraft:goat_horn
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run schedule function yibextract:gtfo/start 13s
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score #active gtfo matches 1 run scoreboard players set @s usedHorn 0

execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score #active gtfo matches 1 run tellraw @s ["\n",{"text":"Failed to call dronestrike","color":"red"},"\n",{"text":"A dronestrike is already on the way, or has just recently finished. ","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score #active gtfo matches 1 run scoreboard players set @s usedHorn 0 

execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 run tellraw @s ["\n",{"text":"Failed to call dronestrike","color":"red"},"\n",{"text":"This item can only be used during the game session!","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 run scoreboard players set @s usedHorn 0 