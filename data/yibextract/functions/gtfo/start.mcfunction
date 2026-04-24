# yippie flavour text
function yibextract:clock/stop_clock

tellraw @a ["",{"text":"=======================================","color":"yellow"},{"text":"\n\n\u26a0 "},{"text":"A CODE G.T.F.O. HAS BEEN ISSUED","bold":true,"color":"yellow"},{"text":" \u26a0\n\nA drone squadron will strike this sector in "},{"text":"5 minutes","bold":true},{"text":".\n"},{"text":"If you are still in the station at this time, your demise will be certain.","italic":true,"color":"gray"},{"text":"\n"},{"text":"Proceed to an extraction point as soon as possible.","color":"red"},{"text":"\n\n"},{"text":"=======================================","color":"yellow"}]

scoreboard players set #active gtfo 1
scoreboard players set #countdown gtfo 6000  