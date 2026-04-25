scoreboard players operation #savedShittyrng shittyrng = #shittyrng shittyrng
scoreboard players operation #savedgtfoChance constants = #gtfoChance constants

# debug
# tellraw @a ["",{"text":"savedgtfoChance ","color":"yellow"},{"score":{"name":"#savedgtfoChance","objective":"constants"}}]
# tellraw @a ["",{"text":"savedShittyrng ","color":"yellow"},{"score":{"name":"#savedShittyrng","objective":"shittyrng"}}]

execute if score #savedShittyrng shittyrng < #savedgtfoChance constants run function yibextract:gtfo/start

execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run scoreboard players add #gtfoChance constants 3
execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run function yibextract:gtfo/gtfo_index
execute unless score #savedShittyrng shittyrng < #savedgtfoChance constants run schedule function yibextract:clock/gtfo_clock 180s