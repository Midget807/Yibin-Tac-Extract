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