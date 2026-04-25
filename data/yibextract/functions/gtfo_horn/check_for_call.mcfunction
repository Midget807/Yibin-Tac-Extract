execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run tellraw @s ["\n",{"text":"Dronestrike has successfully been called in.","bold":true,"color":"red"},"\n",{"text":"An automated strike force is on its way.","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run schedule function yibextract:gtfo_horn/alert_everyone 5s
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run tag @s add caller
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run clear @s minecraft:goat_horn
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run schedule function yibextract:gtfo/start 13s
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 unless score #active gtfo matches 1 run scoreboard players set @s usedHorn 0

execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 if score #active gtfo matches 1 run tellraw @s ["\n",{"text":"Failed to call dronestrike","color":"red"},"\n",{"text":"A dronestrike is already on the way!","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 if score #active gtfo matches 1 run stopsound @a record minecraft:item.goat_horn.sound.5
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 if score #active gtfo matches 1 at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 0.5
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 if score #active gtfo matches 1 run scoreboard players set @s usedHorn 0 

execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run tellraw @s ["\n",{"text":"Failed to call dronestrike","color":"red"},"\n",{"text":"You must deploy before using this item!","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run stopsound @a record minecraft:item.goat_horn.sound.5
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 0.5
execute as @a if score @s usedHorn >= #1 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run scoreboard players set @s usedHorn 0 

execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 run tellraw @s ["\n",{"text":"Failed to call dronestrike","color":"red"},"\n",{"text":"This item can only be used during a game session!","italic":true,"color":"gray"},"\n"]
execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 run stopsound @a record minecraft:item.goat_horn.sound.5
execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 at @s run playsound minecraft:entity.player.burp master @s ~ ~ ~ 0.5 0.5
execute as @a if score @s usedHorn >= #1 constants unless score #gameRunning constants matches 1 run scoreboard players set @s usedHorn 0 