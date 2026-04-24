schedule clear yibextract:clock/extract_point_clock 
schedule clear yibextract:clock/gtfo_clock

tellraw @a {"text":"Starting event clock...","color":"gray"}

schedule function yibextract:clock/extract_point_clock 10s 

scoreboard players set #gtfoChance constants 0
scoreboard players set #savedShittyrng shittyrng 0

schedule function yibextract:clock/gtfo_clock 1500s