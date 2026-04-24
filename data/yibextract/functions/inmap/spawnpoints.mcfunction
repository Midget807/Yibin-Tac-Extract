#force spawnpoints per team
execute as @a[team=red] run spawnpoint @s -115 63 -14

execute as @a[team=yellow] run spawnpoint @s -117 63 -14

execute as @a[team=green] run spawnpoint @s -119 63 -14

execute as @a[team=blue] run spawnpoint @s -121 63 -14

#You will also have to update the spawnpoints for enforce_inmap


#define the boxes in which inMap will be set to zero when a player enters them
#i.e. spawnpoints should be included in these boxes so the game knows that players leave the map upon dying and respawning. 
#it's probably a good idea that these doesn't overlap with the deploy zones as that might cause bugs which i can't be bothered to fix

#red spawn
execute as @a[x=-116,y=62,z=-15,dx=2,dy=5,dz=3] run scoreboard players set @s inMap 0

#yellow spawn
execute as @a[x=-118,y=62,z=-15,dx=2,dy=5,dz=3] run scoreboard players set @s inMap 0

#green spawn
execute as @a[x=-120,y=62,z=-15,dx=2,dy=5,dz=3] run scoreboard players set @s inMap 0

#blue spawn
execute as @a[x=-122,y=62,z=-15,dx=2,dy=5,dz=3] run scoreboard players set @s inMap 0