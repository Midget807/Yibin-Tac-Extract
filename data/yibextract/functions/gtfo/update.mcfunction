execute if score #active gtfo matches 1 run scoreboard players remove #countdown gtfo 1

execute as @a at @s if score #countdown gtfo matches 5999 run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 5 0.7

#yes, i hardcoded all of it :)
execute if score #countdown gtfo matches 4800 run execute as @a at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
execute if score #countdown gtfo matches 4800 run tellraw @a ["",{"text":"\u26a0 [G.T.F.O.] ","bold":true,"color":"yellow"},{"text":"Drone strike in 4 minutes.","color":"yellow"}]

execute if score #countdown gtfo matches 4780 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 4760 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 4740 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5

execute if score #countdown gtfo matches 3600 run execute as @a at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
execute if score #countdown gtfo matches 3600 run tellraw @a ["",{"text":"\u26a0 [G.T.F.O.] ","bold":true,"color":"yellow"},{"text":"Drone strike in 3 minutes.","color":"gold"}]

execute if score #countdown gtfo matches 3580 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 3560 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 3540 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5

execute if score #countdown gtfo matches 2400 run execute as @a at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
execute if score #countdown gtfo matches 2400 run tellraw @a ["",{"text":"\u26a0 [G.T.F.O.] ","bold":true,"color":"yellow"},{"text":"Drone strike in 2 minutes.","color":"red"}]

execute if score #countdown gtfo matches 2380 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 2360 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 2340 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5

execute if score #countdown gtfo matches 1200 run execute as @a at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
execute if score #countdown gtfo matches 1200 run tellraw @a ["",{"text":"\u26a0 [G.T.F.O.] ","bold":true,"color":"yellow"},{"text":"Drone strike in 1 minute.","color":"dark_red"}]

execute if score #countdown gtfo matches 1180 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 1160 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5
execute if score #countdown gtfo matches 1140 run execute as @a at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.3 0.5

execute if score #countdown gtfo matches 400 run tellraw @a ["",{"text":"\u26a0 [G.T.F.O.] ","bold":true,"color":"yellow"},{"text":"DRONE STRIKE IMMINENT.","color":"dark_red","bold":true}]

execute if score #countdown gtfo matches 400 run execute as @a at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 10 0.5

execute if score #countdown gtfo matches 200 as @a[gamemode=adventure] if score @s inMap matches 1 run effect give @s blindness 30 1 true
execute if score #countdown gtfo matches 200 as @a[gamemode=adventure] if score @s inMap matches 1 run effect give @s slowness 30 10 true
execute if score #countdown gtfo matches 100 as @a[gamemode=adventure] if score @s inMap matches 1 run effect give @s wither 30 3 true

#sfx baby
execute if score #countdown gtfo matches 290 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.2 0.5 
execute if score #countdown gtfo matches 260 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.5 0.7 
execute if score #countdown gtfo matches 240 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 1 0.65 
execute if score #countdown gtfo matches 220 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 10 0.6 

execute if score #countdown gtfo matches 62 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound survival_instinct:explote_molotov master @s ~ ~ ~ 5 0.9 
execute if score #countdown gtfo matches 40 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound survival_instinct:explote_molotov master @s ~ ~ ~ 5 1 
execute if score #countdown gtfo matches 25 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound survival_instinct:explote_molotov master @s ~ ~ ~ 5 0.7 
execute if score #countdown gtfo matches 8 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound survival_instinct:explote_molotov master @s ~ ~ ~ 5 0.9 
execute if score #countdown gtfo matches 17 as @a[gamemode=adventure] if score @s inMap matches 1 run execute as @s at @s run playsound survival_instinct:explote_molotov master @s ~ ~ ~ 5 0.8 

#everyone deserves the privledge of hearing the drone strike
execute if score #countdown gtfo matches 290 as @a unless score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.05 0.5 
execute if score #countdown gtfo matches 260 as @a unless score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.07 0.7 
execute if score #countdown gtfo matches 240 as @a unless score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.1 0.65 
execute if score #countdown gtfo matches 220 as @a unless score @s inMap matches 1 run execute as @s at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.1 0.6 

execute if score #countdown gtfo matches 260 as @a unless score @s inMap matches 1 run execute as @s run tellraw @s ["",{"text":"The drone strike is underway. ","color":"dark_red"},{"text":"Thankfully, you are safe in the stash.","italic":true,"color":"gray"}]

#die die die
execute if score #countdown gtfo matches -20 as @a[gamemode=adventure] if score @s inMap matches 1 run kill @s
execute if score #countdown gtfo matches -50 as @a[gamemode=adventure] if score @s inMap matches 1 run kill @s
execute if score #countdown gtfo matches -80 run kill @e[type=corpse:corpse]

execute if score #countdown gtfo matches 100 run function yibextract:panel/close_mall_extraction
execute if score #countdown gtfo matches 80 run function yibextract:panel/close_sewers_extraction
execute if score #countdown gtfo matches 60 run function yibextract:panel/close_cave_extraction

#disallow deployment until 5 minutes after the strike  
execute if score #countdown gtfo matches 300 run function yibextract:panel/disallow_deployment
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -200 run tellraw @a {"text":"The drone strike has finished.","color":"aqua"}
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -250 run tellraw @a ["",{"text":"It will be safe to deploy again in ","color":"aqua"},{"text":"5 Minutes","bold":true,"color":"aqua"},{"text":". ","color":"aqua"}]
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -4100 run tellraw @a ["",{"text":"It will be safe to deploy again in ","color":"aqua"},{"text":"2 Minutes","bold":true,"color":"aqua"},{"text":". ","color":"aqua"}]
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -6000 run execute as @a at @s run playsound create:desk_bell master @s ~ ~ ~ 1 1.5
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -6000 run function yibextract:restock_map
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -6400 run function yibextract:panel/allow_deployment

#reset
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -6500 run function yibextract:clock/start_clock 
execute unless score #stopGame constants matches 1 if score #countdown gtfo matches -6500 run function yibextract:gtfo/init 

#if stop_game via gfto was run:
execute if score #stopGame constants matches 1 if score #countdown gtfo matches -200 run function yibextract:force_stop_game