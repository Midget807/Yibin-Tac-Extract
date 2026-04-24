scoreboard players set #canDeploy canDeploy 1
tellraw @a {"text":"You may now deploy into Narkov station.","color":"green"}
execute as @a at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1