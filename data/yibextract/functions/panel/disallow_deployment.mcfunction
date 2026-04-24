scoreboard players set #canDeploy canDeploy 0
tellraw @a {"text":"You may no longer deploy into Narkov Station.","color":"red"}
execute as @a at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1