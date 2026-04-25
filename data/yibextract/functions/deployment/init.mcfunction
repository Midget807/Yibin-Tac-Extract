#deploy zone occupation status

scoreboard objectives add isDeploying dummy

team add red
team add blue
team add yellow
team add green

scoreboard players set #red isDeploying 0
scoreboard players set #yellow isDeploying 0
scoreboard players set #green isDeploying 0
scoreboard players set #blue isDeploying 0

scoreboard objectives add canDeploy dummy
scoreboard players set #canDeploy canDeploy 1

#timers
scoreboard objectives add deployTicks dummy
scoreboard objectives add deploySecondsB dummy
scoreboard objectives add deploySeconds dummy
scoreboard objectives add inDeployBox dummy

# map deploy zones
scoreboard objectives add safeMapDeployZones dummy
kill @e[type=minecraft:armor_stand, tag=MapDeployZone]

#Track north -159 -41 -22
summon minecraft:armor_stand -159 -41 -22 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "TrackNorth"]}

#Track south -159 -41 115 
summon minecraft:armor_stand -159 -41 115 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "TrackSouth"]}

#Station north -138 -29 4
summon minecraft:armor_stand -138 -29 4 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "StationNorth"]}

#Station south -168 -25 87
summon minecraft:armor_stand -168 -25 87 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "StationSouth"]}

#sewer -122 -46 86
summon minecraft:armor_stand -122 -46 86 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Sewer"]}

#rat tunnel -99 -30 51
summon minecraft:armor_stand -99 -30 51 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Tunnel"]}

#elevator shaft -141 -21 31
summon minecraft:armor_stand -141 -21 31 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Shaft"]}

# abandoned train tunnel -64 -38 57
summon minecraft:armor_stand -64 -38 57 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Abandoned"]}


scoreboard players add @e[type=minecraft:armor_stand, tag=MapDeployZone] safeMapDeployZones 0