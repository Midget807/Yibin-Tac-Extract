#force spawnpoints per team
execute as @a[team=red] run spawnpoint @s -23 -24 -26

execute as @a[team=yellow] run spawnpoint @s 16 -15 139

execute as @a[team=green] run spawnpoint @s -248 -12 168

execute as @a[team=blue] run spawnpoint @s -259 -10 -86

#You will also have to update the spawnpoints for enforce_inmap


#define the boxes in which inMap will be set to zero when a player enters them
#i.e. spawnpoints should be included in these boxes so the game knows that players leave the map upon dying and respawning. 
#it's probably a good idea that these doesn't overlap with the deploy zones as that might cause bugs which i can't be bothered to fix

#red spawn -23 -24 -26
execute as @a[x=-24,y=-25,z=-27,dx=2,dy=5,dz=2] run scoreboard players set @s inMap 0

#yellow spawn 16 -15 139
execute as @a[x=15,y=-16,z=138,dx=2,dy=5,dz=2] run scoreboard players set @s inMap 0

#green spawn -248 -12 168
execute as @a[x=-249,y=-11,z=167,dx=2,dy=5,dz=2] run scoreboard players set @s inMap 0

#blue spawn -259 -10 -86
execute as @a[x=-260,y=-11,z=-87,dx=2,dy=5,dz=23] run scoreboard players set @s inMap 0