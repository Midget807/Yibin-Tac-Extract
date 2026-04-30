#MALL VAULT
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @s [{"text":"The vault was alarmed!","italic":true,"color":"red","bold":false}]
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @a ["",{"selector":"@s","color":"gold"}," ",{"text":"has unlocked the armoured container in the mall!","color":"yellow"}]
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run effect give @s glowing 10 1 true

#alarm
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 6t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 12t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 18t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 24t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 30t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 36t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 42t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 48t append

execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 54t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 60t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 66t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 72t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 78t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 84t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 90t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 96t append

#clear
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run clear @s minecraft:tripwire_hook 1
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 run scoreboard players set #mall openedVaults 1




#FAMILYMART VAULT
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @s [{"text":"The vault was alarmed!","italic":true,"color":"red","bold":false}]
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @a ["",{"selector":"@s","color":"gold"}," ",{"text":"has broken into the Familymart coldstore!","color":"yellow"}]
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run effect give @s glowing 10 1 true

#alarm
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 4t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 8t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 12t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 16t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 20t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 24t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 28t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 32t append

execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 36t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 40t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 44t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 48t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 52t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 56t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 60t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 64t append

execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 68t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 72t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 76t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 80t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 84t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 88t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 92t append
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_coldroom 96t append

#clear
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 positioned 1 1 1 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run clear @s minecraft:tripwire_hook 1
execute if block 1 1 1 create:redstone_link[powered= true] if score #coldroom openedVaults matches 0 run scoreboard players set #coldroom openedVaults 1

#don't forget to change the coordinates in init and the sound function