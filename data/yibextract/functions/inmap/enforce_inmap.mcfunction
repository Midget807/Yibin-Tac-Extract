#if someone's in the map when they shouldn't be, teleport them back to their spawnpoint
execute as @a[gamemode=adventure,team=red] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -23 -24 -26

execute as @a[gamemode=adventure,team=yellow] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s 16 -15 139

execute as @a[gamemode=adventure,team=green] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -248 -12 168

execute as @a[gamemode=adventure,team=blue] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run tp @s -259 -10 -86

execute as @a[gamemode=adventure] unless score #gameRunning constants matches 1 if score @s inMap matches 1 run scoreboard players set @s inMap 0