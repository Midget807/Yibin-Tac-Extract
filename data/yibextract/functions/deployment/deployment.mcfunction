#set isdeploying if in the deploy box
execute as @a[team=red] unless score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 0
execute as @a[team=red] if score @s inDeployBox matches 1 run scoreboard players set @s isDeploying 1
scoreboard players set #red isDeploying 0
execute as @a[team=red] if score @s isDeploying matches 1 run scoreboard players set #red isDeploying 1

#tick timer
execute unless score #red isDeploying matches 1 run scoreboard players operation #red deployTicks = #ticksToDeploy constants
execute if score #red isDeploying matches 1 run scoreboard players remove #red deployTicks 1 

#convert to seconds (heck you i can't be assed learning how to schedule stuff)
scoreboard players operation #red deploySecondsB = #red deployTicks  
scoreboard players operation #red deploySecondsB /= #20 constants  
scoreboard players operation #red deploySeconds = #red deploySecondsB  

#handle if players step off the deploy zone


#Deployment feedback
execute as @a[team=red] if score @s isDeploying matches 1 if score #red isDeploying matches 1 run title @s actionbar [{"text":"DEPLOYING IN ","extra":[{"score":{"name":"#red","objective":"deploySeconds"}}]}]