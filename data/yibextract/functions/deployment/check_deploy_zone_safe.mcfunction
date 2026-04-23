# Checks if the deploy location on the map is safe (no players nearby)

execute unless entity @a[x=-145, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackNorth] safeMapDeployZones 0
execute unless entity @a[x=-133, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackSouth] safeMapDeployZones 0
execute unless entity @a[x=-121, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationNorth] safeMapDeployZones 0
execute unless entity @a[x=-105, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationSouth] safeMapDeployZones 0
execute unless entity @a[x=-145, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Sewer] safeMapDeployZones 0
execute unless entity @a[x=-133, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Tunnel] safeMapDeployZones 0
execute unless entity @a[x=-121, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Shaft] safeMapDeployZones 0
execute unless entity @a[x=-105, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Abandoned] safeMapDeployZones 0

#execute unless entity @a[x=-145, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackNorth] safeMapDeployZones 1
#execute unless entity @a[x=-133, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=TrackSouth] safeMapDeployZones 1
#execute unless entity @a[x=-121, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationNorth] safeMapDeployZones 1
#execute unless entity @a[x=-105, y=60, z=-78, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=StationSouth] safeMapDeployZones 1
#execute unless entity @a[x=-145, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Sewer] safeMapDeployZones 1
#execute unless entity @a[x=-133, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Tunnel] safeMapDeployZones 1
#execute unless entity @a[x=-121, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Shaft] safeMapDeployZones 1
#execute unless entity @a[x=-105, y=60, z=-66, dx=4, dy=4, dz=4] run scoreboard players set @e[type=minecraft:armor_stand, tag=MapDeployZone, tag=Abandoned] safeMapDeployZones 1