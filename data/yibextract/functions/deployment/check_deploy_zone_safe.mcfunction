# Checks if the deploy location on the map is safe (no players nearby)

execute if entity @a[x=-159,y=-39,z=-27,dx=11,dy=10,dz=30] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackNorth] safeMapDeployZones 0
execute if entity @a[x=-159,y=-39,z=93,dx=17,dy=10,dz=39] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackSouth] safeMapDeployZones 0
execute if entity @a[x=-155,y=-28,z=-1,dx=30,dy=10,dz=8] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationNorth] safeMapDeployZones 0
execute if entity @a[x=-171,y=-27,z=86,dx=21,dy=4,dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationSouth] safeMapDeployZones 0
execute if entity @a[x=-133,y=-43,z=76,dx=17,dy=12,dz=30] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Sewer] safeMapDeployZones 0
execute if entity @a[x=-103,y=-31,z=44,dx=12,dy=15,dz=21] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Tunnel] safeMapDeployZones 0
execute if entity @a[x=-141,y=-22,z=28,dx=15,dy=9,dz=9] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Shaft] safeMapDeployZones 0
execute if entity @a[x=-75,y=-37,z=46,dx=14,dy=14,dz=35] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Abandoned] safeMapDeployZones 0

execute unless entity @a[x=-159,y=-39,z=-27,dx=11,dy=10,dz=30] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackNorth] safeMapDeployZones 1
execute unless entity @a[x=-159,y=-39,z=93,dx=17,dy=10,dz=39] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackSouth] safeMapDeployZones 1
execute unless entity @a[x=-155,y=-28,z=-1,dx=30,dy=10,dz=8] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationNorth] safeMapDeployZones 1
execute unless entity @a[x=-171,y=-27,z=86,dx=21,dy=4,dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationSouth] safeMapDeployZones 1
execute unless entity @a[x=-133,y=-43,z=76,dx=17,dy=12,dz=30] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Sewer] safeMapDeployZones 1
execute unless entity @a[x=-103,y=-31,z=44,dx=12,dy=15,dz=21] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Tunnel] safeMapDeployZones 1
execute unless entity @a[x=-141,y=-22,z=28,dx=15,dy=9,dz=9] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Shaft] safeMapDeployZones 1
execute unless entity @a[x=-75,y=-37,z=46,dx=14,dy=14,dz=35] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Abandoned] safeMapDeployZones 1