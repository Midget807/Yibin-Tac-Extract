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

#successful deploy
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @e[type=armor_stand,tag=DeployZone,scores={safeDeployZones=1},sort=random,limit=1] run tp @s ~ ~ ~ 
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s isDeploying 0    
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run effect give @s blindness 1 10 true
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 1 
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run title @s actionbar [{"text":"YOU HAVE BEEN DEPLOYED","color":"red","bold":true}]
execute as @a[team=red] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s inMap 1    
