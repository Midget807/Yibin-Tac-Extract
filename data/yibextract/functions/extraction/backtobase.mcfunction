#Define where teams will be teleported to upon successful extraction below

execute as @a[team=red] if score @s extractSeconds matches 0 run tp @s -17 -24 -31

execute as @a[team=yellow] if score @s extractSeconds matches 0 run tp @s 22 -15 134 0 0

execute as @a[team=green] if score @s extractSeconds matches 0 run tp @s -242 -12 163 0 0

execute as @a[team=blue] if score @s extractSeconds matches 0 run tp @s -253 -10 -91 0 0

execute as @a if score @s extractSeconds matches 0 at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.4 0.8