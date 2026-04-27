execute as @a if score @s deployCoolDown > #0 constants run scoreboard players remove @s deployCoolDown 1

#trigger message when deployCooldown reaches 0 or is set after being zero (i.e. after extracting)
#FOR PLAYERS, the canDeploy scoreboard is used only to track whether a message for their current status has been shown.
#note that the canDeploy objective is also used to track whether GLOBAL deployment is allowed, with the #canDeploy ID.  

execute as @a unless score @s deployCoolDown > #0 constants if score #gameRunning constants matches 1 if score @s canDeploy matches 0 if score #canDeploy canDeploy matches 1 at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1  
execute as @a unless score @s deployCoolDown > #0 constants if score #gameRunning constants matches 1 if score @s canDeploy matches 0 if score #canDeploy canDeploy matches 1 run tellraw @s ["\n",{"text":"You may now deploy again.","color":"green"},"\n"]
execute as @a unless score @s deployCoolDown > #0 constants if score #gameRunning constants matches 1 if score @s canDeploy matches 0 if score #canDeploy canDeploy matches 1 run title @s actionbar {"text":" ","color":"green"}
execute as @a unless score @s deployCoolDown > #0 constants if score @s canDeploy matches 0 run scoreboard players set @s canDeploy 1

execute as @a if score @s deployCoolDown > #0 constants if score @s canDeploy matches 1 run tellraw @s ["\n",{"text":"Successfully extracted!","bold":true,"color":"dark_green"},"\nYou may deploy again in ",{"text":"3","bold":true,"color":"yellow"}," minutes.\n"]
execute as @a if score @s deployCoolDown > #0 constants if score @s canDeploy matches 1 run scoreboard players set @s canDeploy 0

#when players join the first time they will not have a canDeploy score assigned so we set it here.
execute as @a unless score @s canDeploy matches 0 unless score @s canDeploy matches 1 run scoreboard players set @s canDeploy 1 

#warn if on deploy cooldown
execute as @a if score #canDeploy canDeploy matches 1 if score @s deployCoolDown > #0 constants unless score @s inMap matches 1 run title @s actionbar ["",{"text":"You may deploy again in","color":"gold"}," ",{"score":{"name":"@s","objective":"deployCoolDown"},"bold":true,"color":"yellow"}," ",{"text":"seconds.","color":"gold"}]

#this function runs itself every second
schedule function yibextract:deployment/decrement_deploycooldown 1s