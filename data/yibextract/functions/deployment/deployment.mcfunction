#set isdeploying if in the deploy box
# execute as @a[team=red] unless score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 0
execute as @a[team=red] if score @s inDeployBox matches 1 unless score @s inMap matches 1 run scoreboard players set @s isDeploying 1
scoreboard players set #red isDeploying 0
execute as @a[team=red] if score @s isDeploying matches 1 run scoreboard players set #red isDeploying 1

#tick timer
execute unless score #red isDeploying matches 1 run scoreboard players operation #red extractSecondsLS = #ticksToDeploy constants
execute unless score #red isDeploying matches 1 run scoreboard players operation #red deployTicks = #ticksToDeploy constants
execute if score #red isDeploying matches 1 run scoreboard players remove #red deployTicks 1 

#convert to seconds (heck you i can't be assed learning how to schedule stuff)
scoreboard players operation #red deploySecondsB = #red deployTicks 
scoreboard players operation #red deploySecondsB /= #20 constants 
scoreboard players operation #red deploySeconds = #red deploySecondsB 

#handle if players step off the deploy zone
execute as @a[team=red] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run title @s actionbar [{"text":"DEPLOYMENT CANCELLED","color":"yellow","bold":true}]
execute as @a[team=red] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 at @s run playsound create:cardboard_bonk master @s ~ ~ ~ 0.7 0.8
execute as @a[team=red] if score @s isDeploying matches 1 unless score @s inDeployBox matches 1 unless score @s inMap matches 1 run scoreboard players set @s isDeploying 0

#deployment countdown feedback
execute as @a[team=red] if score @s isDeploying matches 1 unless score #red deploySeconds = #red extractSecondsLS if score #red isDeploying matches 1 run title @s actionbar [{"text":"DEPLOYING IN ","extra":[{"score":{"name":"#red","objective":"deploySeconds"}}]}]
execute as @a[team=red] if score @s isDeploying matches 1 unless score #red deploySeconds = #red extractSecondsLS at @s run playsound minecraft:block.lever.click master @a ~ ~ ~ 0.7 1.6
execute as @a[team=red] if score @s isDeploying matches 1 unless score #red deploySeconds = #red extractSecondsLS run scoreboard players operation #red extractSecondsLS = #red deploySeconds 

#attempt to deploy
execute as @a[team=red, limit=1] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @e[type=armor_stand,tag=MapDeployZone,scores={safeMapDeployZones=1},sort=random,limit=1] run summon minecraft:armor_stand ~ ~3 ~ {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["RedTeamMapDeploy"]}
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @e[type=minecraft:armor_stand, tag=RedTeamMapDeploy] run tp @s ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=RedTeamMapDeploy]
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run tag @s remove UnableToTp

#Checks if they have been able to tp
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s inMap 1
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 if score @s inMap matches 1 run tag @s add UnableToTp
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 if score @s inMap matches 1 run scoreboard players set @s inMap 0

#effects and feedback on scucessful deploy
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s isDeploying 0
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run effect give @s blindness 1 10 true
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 1
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run title @s actionbar [{"text":"YOU HAVE BEEN DEPLOYED","color":"red","bold":true}]
