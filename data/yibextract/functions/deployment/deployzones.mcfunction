execute as @a run scoreboard players set @s inDeployBox 0

#deploy zones below

#red spawn
execute as @a[x=-101,y=62,z=-15,dx=2,dy=3,dz=2,team=red] run scoreboard players set @s inDeployBox 1
execute as @a[x=-101,y=62,z=-15,dx=2,dy=3,dz=2,team=!red] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

