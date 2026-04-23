#set isdeploying if in the deploy box
# execute as @a[team=green] unless score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 0
execute as @a[team=green] if score @s inDeployBox matches 1 unless score @s inMap matches 1 run scoreboard players set @s isDeploying 1
scoreboard players set #green isDeploying 0
execute as @a[team=green] if score @s isDeploying matches 1 run scoreboard players set #green isDeploying 1

#tick timer
execute unless score #green isDeploying matches 1 run scoreboard players operation #green extractSecondsLS = #ticksToDeploy constants
execute unless score #green isDeploying matches 1 run scoreboard players operation #green deployTicks = #ticksToDeploy constants
execute if score #green isDeploying matches 1 unless score #green deployTicks matches ..0 run scoreboard players remove #green deployTicks 1 

#convert to seconds (heck you i can't be assed learning how to schedule stuff)
scoreboard players operation #green deploySecondsB = #green deployTicks 
scoreboard players operation #green deploySecondsB /= #20 constants 
scoreboard players operation #green deploySeconds = #green deploySecondsB 

#handle if players step off the deploy zone
execute as @a[team=green] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run title @s actionbar [{"text":"DEPLOYMENT CANCELLED","color":"yellow","bold":true}]
execute as @a[team=green] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 at @s run playsound create:cardboard_bonk master @s ~ ~ ~ 0.7 0.8
execute as @a[team=green] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run scoreboard players set @s isDeploying 0

#deployment countdown feedback
execute as @a[team=green] if score @s isDeploying matches 1 unless score #green deploySeconds = #green extractSecondsLS if score #green isDeploying matches 1 run title @s actionbar [{"text":"DEPLOYING IN ","extra":[{"score":{"name":"#green","objective":"deploySeconds"}}]}]
execute as @a[team=green] if score @s isDeploying matches 1 unless score #green deploySeconds = #green extractSecondsLS at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 0.7 1.6
execute as @a[team=green] if score @s isDeploying matches 1 unless score #green deploySeconds = #green extractSecondsLS run scoreboard players operation #green extractSecondsLS = #green deploySeconds 

#attempt to deploy
execute as @a[team=green, limit=1] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 at @e[type=armor_stand,tag=MapDeployZone,scores={safeMapDeployZones=1},sort=random,limit=1] run summon minecraft:armor_stand ~ ~3 ~ {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["greenTeamMapDeploy"]}
execute as @a[team=green] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 at @e[type=minecraft:armor_stand, tag=greenTeamMapDeploy] run tp @s ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=greenTeamMapDeploy]
execute as @a[team=green] if score @s inDeployBox matches 0 if score #green deploySeconds matches 0 run tag @s remove UnableToTp

#effects and feedback deploy
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 run scoreboard players set @s isDeploying 0
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 run effect give @s blindness 1 10 true
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 1
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 run title @s actionbar [{"text":"YOU HAVE BEEN DEPLOYED","color":"red","bold":true}]
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 run scoreboard players set @s inMap 1
execute as @a[team=green, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #green deploySeconds matches 0 run schedule function yibextract:deployment/send_feedback_green 1t
