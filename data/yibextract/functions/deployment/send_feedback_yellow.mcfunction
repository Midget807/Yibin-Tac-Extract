#check if player was unable to tp
function yibextract:deployment/deployzones

execute as @a[team=yellow] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run tag @s add UnableToTp
execute as @a[team=yellow] if score @s inDeployBox matches 1 if score #yellow deploySeconds matches 0 run scoreboard players set @s inMap 0

#error message for those unable to tp
execute as @a[tag=UnableToTp,team=yellow] if score @s inDeployBox matches 1 run tellraw @s {"text":"ERROR: NO VALID SPAWNPOINTS (try deploying again)","color":"red"} 
execute as @a[tag=UnableToTp,team=yellow] if score @s inDeployBox matches 1 run scoreboard players operation #yellow deployTicks = #ticksToDeploy constants
execute as @a[tag=UnableToTp,team=yellow] if score @s inDeployBox matches 1 run tag @s remove UnableToTp