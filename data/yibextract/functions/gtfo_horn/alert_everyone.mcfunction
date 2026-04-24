execute as @a[tag=caller] run tellraw @a ["\n",{"text":"ALERT: ","bold":true,"color":"yellow"},{"selector":"@s","bold":true,"color":"gold"},{"text":" has called in a G.T.F.O. drone strike.","bold":true,"color":"yellow"},"\n"]
execute as @a[tag=caller] run effect give @s glowing 30 1 true
execute as @a[tag=caller] run tag @s remove caller
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.1 0.7