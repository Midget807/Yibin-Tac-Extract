scoreboard objectives add constants dummy

#secondsToExtract and secondsToDeploy should be one higher than what you want it to be since division rounds down
scoreboard players set #secondsToExtract constants 4
scoreboard players set #secondsToDeploy constants 4

scoreboard players set #20 constants 20
scoreboard players set #9 constants 9

#derive ticksToExtract from secondsToExtract
scoreboard players operation #buffer constants = #secondsToExtract constants
scoreboard players operation #buffer constants *= #20 constants
scoreboard players operation #ticksToExtract constants = #buffer constants

#derive ticksToDeploy from secondsToExtract
scoreboard players operation #buffer constants = #secondsToDeploy constants
scoreboard players operation #buffer constants *= #20 constants
scoreboard players operation #ticksToDeploy constants = #buffer constants

#used for both extraction and deployment so it goes here 
scoreboard objectives add inMap dummy
scoreboard players add @a inMap 0
