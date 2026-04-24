scoreboard players operation #savedShittyrng shittyrng = #shittyrng shittyrng
scoreboard players operation #savedgtfoChance constants = #gtfoChance constants

execute if score #savedShittyrng shittyrng < #savedgtfoChance constants run function yibextract:gtfo/start
execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run scoreboard players add #gtfoChance constants 3
# execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run tellraw @a ["",{"text":"Current chance of GTFO: ","color":"white"},{"score":{"name":"#gtfoChance","objective":"constants"}}]
execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run schedule function yibextract:clock/gtfo_clock 600s