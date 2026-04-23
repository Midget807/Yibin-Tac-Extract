say Initiating deployment logic...

#initialise shittyrng

scoreboard objectives add shittyrng dummy
scoreboard players set #shittyrng shittyrng 1

#deploy zone occupation status

scoreboard objectives add isDeploying dummy

scoreboard players set #red isDeploying 0
scoreboard players set #yellow isDeploying 0
scoreboard players set #green isDeploying 0
scoreboard players set #blue isDeploying 0

#timers
scoreboard objectives add deployTicks dummy
scoreboard objectives add deploySecondsB dummy
scoreboard objectives add deploySeconds dummy
scoreboard objectives add inDeployBox dummy

# map deploy zones
scoreboard objectives add safeMapDeployZones dummy
kill @e[type=minecraft:armor_stand, tag=MapDeployZone]
summon minecraft:armor_stand -143 60 -76 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "TrackNorth"]}
summon minecraft:armor_stand -131 60 -76 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "TrackSouth"]}
summon minecraft:armor_stand -119 60 -76 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "StationNorth"]}
summon minecraft:armor_stand -103 60 -76 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "StationSouth"]}
summon minecraft:armor_stand -143 60 -64 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Sewer"]}
summon minecraft:armor_stand -131 60 -64 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Tunnel"]}
summon minecraft:armor_stand -119 60 -64 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Shaft"]}
summon minecraft:armor_stand -103 60 -64 {Invulnerable:1b, NoGravity:1b, Invisible:1b, Tags:["MapDeployZone", "Abandoned"]}
scoreboard players add @e[type=minecraft:armor_stand, tag=MapDeployZone] safeMapDeployZones 0