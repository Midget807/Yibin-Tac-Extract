#set isdeploying if in the deploy box
# execute as @a[team=yellow] unless score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 0
execute as @a[team=yellow] if score #canDeploy canDeploy matches 1 unless score @s inMap matches 1 if score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 1
scoreboard players set #yellow isDeploying 0
execute as @a[team=yellow] if score #canDeploy canDeploy matches 1 unless score @s inMap matches 1 if score @s isDeploying matches 1 run scoreboard players set #yellow isDeploying 1

#warn if candeploy is zero
execute as @a[team=yellow] unless score #canDeploy canDeploy matches 1 unless score @s inMap matches 1 if score @s inDeployBox matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"You cannot deploy right now.","color":"gold"}

#throw error if player's inmap is 1 
execute as @a[team=yellow] if score @s inMap matches 1 if score @s inDeployBox matches 1 if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"ERROR: CANNOT DEPLOY - your inMap value is 1.","color":"red"}

#tick timer
execute unless score #yellow isDeploying matches 1 run scoreboard players operation #yellow extractSecondsLS = #ticksToDeploy constants
execute unless score #yellow isDeploying matches 1 run scoreboard players operation #yellow deployTicks = #ticksToDeploy constants
execute if score #yellow isDeploying matches 1 unless score #yellow deployTicks matches ..0 run scoreboard players remove #yellow deployTicks 1 

#convert to seconds (heck you i can't be assed learning how to schedule stuff)
scoreboard players operation #yellow deploySecondsB = #yellow deployTicks 
scoreboard players operation #yellow deploySecondsB /= #20 constants 
scoreboard players operation #yellow deploySeconds = #yellow deploySecondsB 

#handle if players step off the deploy zone
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run title @s actionbar [{"text":"DEPLOYMENT CANCELLED","color":"yellow","bold":true}]
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 at @s run playsound create:cardboard_bonk master @s ~ ~ ~ 0.7 0.8
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run scoreboard players set @s isDeploying 0

#deployment countdown feedback
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score #yellow deploySeconds = #yellow extractSecondsLS if score #yellow isDeploying matches 1 run title @s actionbar [{"text":"DEPLOYING IN ","extra":[{"score":{"name":"#yellow","objective":"deploySeconds"}}]}]
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score #yellow deploySeconds = #yellow extractSecondsLS at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 0.7 1.6
execute as @a[team=yellow] if score @s isDeploying matches 1 unless score #yellow deploySeconds = #yellow extractSecondsLS run scoreboard players operation #yellow extractSecondsLS = #yellow deploySeconds 

#attempt to deploy
execute as @a[team=yellow, limit=1] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 at @e[type=armor_stand,tag=MapDeployZone,scores={safeMapDeployZones=1},sort=random,limit=1] run summon minecraft:armor_stand ~ ~3 ~ {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["yellowTeamMapDeploy"]}
execute as @a[team=yellow] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 at @e[type=minecraft:armor_stand, tag=yellowTeamMapDeploy] run tp @s ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=yellowTeamMapDeploy]
execute as @a[team=yellow] if score @s inDeployBox matches 0 if score #yellow deploySeconds matches 0 run tag @s remove UnableToTp

#effects and feedback deploy
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run scoreboard players set @s isDeploying 0
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run effect give @s blindness 1 10 true
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 1
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run title @s actionbar [{"text":"YOU HAVE BEEN DEPLOYED","color":"red","bold":true}]
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run scoreboard players add #shittyrng shittyrng 2
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run scoreboard players set @s inMap 1
execute as @a[team=yellow, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run schedule function yibextract:deployment/send_feedback_yellow 1t
