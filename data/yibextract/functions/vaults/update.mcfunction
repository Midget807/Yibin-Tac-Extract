#MALL VAULT
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @s [{"text":"The vault was alarmed!","italic":true,"color":"red","bold":false}]
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run tellraw @a ["",{"selector":"@s","color":"gold"}," ",{"text":"has unlocked the mall vault!","color":"yellow"}]
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run effect give @s glowing 10 1 true

#alarm
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 5t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 10t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 15t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 20t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 25t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 30t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 35t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 40t append

execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 45t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 50t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 55t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 60t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 65t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 70t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 75t append
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run schedule function yibextract:vaults/sound_mall 80t append

#clear
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 positioned -167 -25 32 as @a[sort=nearest,limit=1,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run clear @s minecraft:tripwire_hook 1
execute if block -167 -25 32 create:redstone_link[powered= true] if score #mall openedVaults matches 0 players set #mall openedVaults 1





# ["",{"selector":"@s","color":"gold"}," ",{"text":"has opened the FamilyMart coldstore!","color":"yellow"}]
# ["",{"selector":"@s","color":"gold"}," ",{"text":"has unlocked the abandoned train carriage!","color":"yellow"}]