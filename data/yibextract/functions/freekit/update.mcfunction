#this must be done every tick because the way trigger scoreboards work is cringe
scoreboard players enable @a freekit

execute as @a if score @s freekitCoolDown > #0 constants run scoreboard players remove @s freekitCoolDown 1      

#fail conditions
execute as @a if score @s freekit > #0 constants if score #gameRunning constants matches 1 if score @s inMap matches 1 run tellraw @s [{"text":"You must be at your stash to receive the free kit!","color":"red"}]

execute as @a if score @s freekit > #0 constants if score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run tellraw @s [{"text":"You are limited to one free kit per minute!","color":"red"}]

execute as @a if score @s freekit > #0 constants unless score #gameRunning constants matches 1 run tellraw @s [{"text":"You may only receive the free kit when a game is in session! ","color":"red"}]

#successful trigger
execute as @a if score @s freekit > #0 constants unless score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run tellraw @s [{"text":"You have received the ","color":"white"},{"text":"free kit.","bold":true,"color":"white"}]
execute as @a if score @s freekit > #0 constants unless score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run give @s survival_instinct:cloth_balaclava_helmet
execute as @a if score @s freekit > #0 constants unless score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run give @s lrtactical:melee{display:{Name:'[{"text":"Baseball Bat","italic":false}]',Lore:['[{"text":"Beggars can\'t be choosers!","color":"gray"}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:8,Slot:mainhand,UUID:[I;-126326,42281,135634,-84562],Name:1777178849905},{AttributeName:"generic.movement_speed",Amount:-0.03,Slot:mainhand,UUID:[I;-126326,42581,135634,-85162],Name:1777178849905}],"MeleeWeaponId":"lrtactical:baseball_bat"}
execute as @a if score @s freekit > #0 constants unless score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run give @s survival_instinct:cheese_chips 2
execute as @a if score @s freekit > #0 constants unless score @s freekitCoolDown > #0 constants if score #gameRunning constants matches 1 unless score @s inMap matches 1 run scoreboard players set @s freekitCoolDown 1200

#reset trigger
scoreboard players set @a freekit 0