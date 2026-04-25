execute as @a run scoreboard players set @s inDeployBox 0

#deploy zones below

#red deploy zone   -18 -24 -37
execute as @a[x=-18,y=-24,z=-37,dx=2,dy=3,dz=4,team=red] run scoreboard players set @s inDeployBox 1
execute as @a[x=-18,y=-24,z=-37,dx=2,dy=3,dz=4,team=!red] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#yellow deploy zone 21 -16 128
execute as @a[x=21,y=-16,z=128,dx=2,dy=3,dz=4,team=yellow] run scoreboard players set @s inDeployBox 1
execute as @a[x=21,y=-16,z=128,dx=2,dy=3,dz=4,team=!yellow] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#green deploy zone -243 -11 157
execute as @a[x=-243,y=-11,z=157,dx=2,dy=3,dz=4,team=green] run scoreboard players set @s inDeployBox 1
execute as @a[x=-243,y=-11,z=156,dx=2,dy=3,dz=4,team=!green] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#blue deploy spawn -254 -11 -97
execute as @a[x=-254,y=-11,z=-97,dx=2,dy=3,dz=4,team=blue] run scoreboard players set @s inDeployBox 1
execute as @a[x=-254,y=-11,z=-97,dx=2,dy=3,dz=4,team=!blue] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

