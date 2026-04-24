#if someone's in the map when they shouldn't be, teleport them back to their spawnpoint
execute as @a[gamemode=adventure,team=red] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -115 63 -14

execute as @a[gamemode=adventure,team=yellow] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -117 63 -14

execute as @a[gamemode=adventure,team=green] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -119 63 -14

execute as @a[gamemode=adventure,team=blue] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -121 63 -14

execute as @a[gamemode=adventure] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run scoreboard players set @s inMap 0