execute as @a run scoreboard players set @s inExtractBox 0

#mall extract zone -199 -26 63
execute as @a[x=-199,y=-26,z=63,dx=2,dy=3,dz=3] if score #mall openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-199,y=-26,z=63,dx=2,dy=3,dz=3] unless score #mall openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}

#sewers extraction zone -130 -44 -7
execute as @a[x=-130,y=-44,z=-7,dx=3,dy=5,dz=2] if score #sewers openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-130,y=-44,z=-7,dx=3,dy=5,dz=2] unless score #sewers openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}

#cave extract zone -102 -34 81
execute as @a[x=-102,y=-34,z=81,dx=3,dy=3,dz=2] if score #cave openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-102,y=-34,z=81,dx=3,dy=3,dz=2] unless score #cave openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}