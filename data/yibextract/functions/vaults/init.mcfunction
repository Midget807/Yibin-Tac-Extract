#replace mall reciever
clone -167 -28 32 -167 -28 32 -167 -25 32

#replace familymart reciever
clone 2 2 2 2 2 2 1 1 1

#schedule function yibextract:vaults/kill_links 1s

scoreboard objectives add openedVaults dummy

scoreboard players set #mall openedVaults 0
#scoreboard players set #train openedVaults 0
scoreboard players set #coldroom openedVaults 0