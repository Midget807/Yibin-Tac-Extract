scoreboard players set #canDeploy canDeploy 1
tellraw @a {"text":"\nYou may now deploy into the station.\n","color":"green"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1