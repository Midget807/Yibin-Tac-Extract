scoreboard objectives add constants dummy

#secondsToExtract and secondsToDeploy should be one higher than what you want it to be since division rounds down
scoreboard players set #secondsToExtract constants 36
scoreboard players set #secondsToDeploy constants 11
scoreboard players set #respiteSeconds constants 180
#if you're changing respiteseconds you also need to change the "successfuly extracted" message in decrement_deploycooldown 
#since the "3 minutes" is hardcoded there, though that's purely visual . i am just lazy

scoreboard players set #20 constants 20
scoreboard players set #9 constants 9
scoreboard players set #18 constants 18
scoreboard players set #3 constants 3
scoreboard players set #1 constants 1
scoreboard players set #0 constants 0

#derive ticksToExtract from secondsToExtract
scoreboard players operation #buffer constants = #secondsToExtract constants
scoreboard players operation #buffer constants *= #20 constants
scoreboard players operation #ticksToExtract constants = #buffer constants

#derive ticksToDeploy from secondsToExtract
scoreboard players operation #buffer constants = #secondsToDeploy constants
scoreboard players operation #buffer constants *= #20 constants
scoreboard players operation #ticksToDeploy constants = #buffer constants

#initialise inmap
scoreboard objectives add inMap dummy
scoreboard players add @a inMap 0

#initialise shittyrng
scoreboard objectives add shittyrng dummy
scoreboard players set #shittyrng shittyrng 1
 