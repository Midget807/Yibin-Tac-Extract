scoreboard objectives add constants dummy

#secondsToExtract should be one higher than what you want it to be since division rounds down
scoreboard players set #secondsToExtract constants 4
scoreboard players set #20 constants 20

#derive ticksToExtract from secondsToExtract
scoreboard players operation #buffer constants = #secondsToExtract constants
scoreboard players operation #buffer constants *= #20 constants
scoreboard players operation #ticksToExtract constants = #buffer constants

