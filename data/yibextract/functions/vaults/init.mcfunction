#replace mall reciever
clone -167 -28 32 -167 -28 32 -167 -25 32

schedule function yibextract:vaults/kill_links 1s

scoreboard objectives add openedVaults dummy

scoreboard players set #mall openedVaults 0
scoreboard players set #abandoned openedVaults 0
scoreboard players set #coldroom openedVaults 0