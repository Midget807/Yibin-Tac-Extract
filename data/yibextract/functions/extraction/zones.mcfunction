execute as @a run scoreboard players set @s inExtractBox 0

#mall extract zone 
execute as @a[x=-101,y=62,z=-29,dx=2,dy=3,dz=2] if score #mall openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-101,y=62,z=-29,dx=2,dy=3,dz=2] unless score #mall openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}

execute as @a[x=-109,y=62,z=-29,dx=2,dy=3,dz=2] if score #sewers openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-109,y=62,z=-29,dx=2,dy=3,dz=2] unless score #sewers openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}

execute as @a[x=-117,y=62,z=-29,dx=2,dy=3,dz=2] if score #cave openExtractZones matches 1 run scoreboard players set @s inExtractBox 1
execute as @a[x=-117,y=62,z=-29,dx=2,dy=3,dz=2] unless score #cave openExtractZones matches 1 if score #shittyrng shittyrng matches 1 run title @s actionbar {"text":"This extraction point is not open!","color":"gold"}