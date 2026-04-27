scoreboard objectives add isExtracting dummy
scoreboard objectives add inExtractBox dummy
scoreboard objectives add extractTicks dummy
scoreboard objectives add extractSecondsB dummy
scoreboard objectives add extractSeconds dummy
scoreboard objectives add extractSecondsLS dummy

scoreboard objectives add openExtractZones dummy

schedule clear yibextract:deployment/decrement_deploycooldown
schedule function yibextract:deployment/decrement_deploycooldown 1s