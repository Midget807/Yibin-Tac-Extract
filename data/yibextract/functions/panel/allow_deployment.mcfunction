scoreboard players set #canDeploy canDeploy 1
scoreboard players set @a deployCoolDown 0
scoreboard players set @a canDeploy 1
tellraw @a {"text":"\nAll players may now deploy into the station.\n","color":"green"}
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1  