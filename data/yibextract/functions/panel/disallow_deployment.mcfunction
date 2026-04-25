scoreboard players set #canDeploy canDeploy 0
tellraw @a {"text":"\nYou may no longer deploy into the station.\n","color":"red"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5