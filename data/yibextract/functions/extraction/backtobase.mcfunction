#Define where teams will be teleported to upon successful extraction below

execute as @a[team=red] if score @s extractSeconds matches 0 run tp @s -101 63 -20 0 0

execute as @a[team=yellow] if score @s extractSeconds matches 0 run tp @s -99 63 -20 0 0

execute as @a[team=green] if score @s extractSeconds matches 0 run tp @s -97 63 -20 0 0

execute as @a[team=blue] if score @s extractSeconds matches 0 run tp @s -95 63 -20 0 0