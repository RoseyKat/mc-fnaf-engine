scoreboard objectives add doors dummy Doors
scoreboard players add left_light doors 1

execute if score left_light doors matches 2.. run scoreboard players set left_light doors 0

execute if score left_light doors matches 1 run scoreboard players add usage values 1
execute if score left_light doors matches 0 run scoreboard players remove usage values 1