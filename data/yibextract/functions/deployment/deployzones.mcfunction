execute as @a run scoreboard players set @s inDeployBox 0

#deploy zones below

#red deploy zone  
execute as @a[x=-101,y=62,z=-15,dx=2,dy=3,dz=2,team=red] run scoreboard players set @s inDeployBox 1
execute as @a[x=-101,y=62,z=-15,dx=2,dy=3,dz=2,team=!red] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#yellow deploy zone 
execute as @a[x=-97,y=62,z=-15,dx=2,dy=3,dz=2,team=yellow] run scoreboard players set @s inDeployBox 1
execute as @a[x=-97,y=62,z=-15,dx=2,dy=3,dz=2,team=!yellow] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#green deploy zone
execute as @a[x=-105,y=62,z=-15,dx=2,dy=3,dz=2,team=green] run scoreboard players set @s inDeployBox 1
execute as @a[x=-105,y=62,z=-15,dx=2,dy=3,dz=2,team=!green] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

#blue deploy spawn
execute as @a[x=-109,y=62,z=-15,dx=2,dy=3,dz=2,team=blue] run scoreboard players set @s inDeployBox 1
execute as @a[x=-109,y=62,z=-15,dx=2,dy=3,dz=2,team=!blue] if score #shittyrng shittyrng matches 1 run tellraw @s {"text":"You are not on this team!","color":"red"}

