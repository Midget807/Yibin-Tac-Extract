scoreboard players operation #gtfoIndex constants = #gtfoChance constants
scoreboard players operation #gtfoIndex constants /= #3 constants 

execute if score #gtfoIndex constants matches 1 run tellraw @a [{"text":"The G.T.F.O. risk index has risen to ","color":"yellow"},{"text":"1","bold":true,"color":"yellow"},{"text":" (low). ","color":"yellow"}]
execute if score #gtfoIndex constants matches 2 run tellraw @a [{"text":"The G.T.F.O. risk index has risen to ","color":"yellow"},{"text":"2","bold":true,"color":"gold"},{"text":" (moderate)","color":"gold"},{"text":". ","color":"yellow"}]
execute if score #gtfoIndex constants matches 3 run tellraw @a [{"text":"The G.T.F.O. risk index has risen to ","color":"yellow"},{"text":"3","bold":true,"color":"red"},{"text":" (high)","color":"red"},{"text":". ","color":"yellow"}]
execute if score #gtfoIndex constants matches 4 run tellraw @a [{"text":"The G.T.F.O. risk index has risen to ","color":"yellow"},{"text":"4","bold":true,"color":"dark_red"},{"text":" (severe)","color":"dark_red"},{"text":". ","color":"yellow"}]
execute if score #gtfoIndex constants matches 5 run tellraw @a [{"text":"The G.T.F.O. risk index has risen to ","color":"yellow"},{"text":"5","bold":true,"color":"dark_purple"},{"text":" (catastrophic)","color":"dark_purple"},{"text":". ","color":"yellow"}]