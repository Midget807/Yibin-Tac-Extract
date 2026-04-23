#effects and feedback on scucessful deploy
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s isDeploying 0
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run effect give @s blindness 1 10 true
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.5 1
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run title @s actionbar [{"text":"YOU HAVE BEEN DEPLOYED","color":"red","bold":true}]
execute as @a[team=red, tag=!UnableToTp] if score @s inDeployBox matches 1 if score #red deploySeconds matches 0 run scoreboard players set @s inMap 1

#error message for those unable to tp
execute as @a[tag=UnableToTp] if score @s inDeployBox matches 1 run tellraw @s {"text":"ERROR: NO VALID SPAWNPOINTS (hold on, this should fix itself)","color":"red"} 