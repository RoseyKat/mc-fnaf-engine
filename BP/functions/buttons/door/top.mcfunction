scoreboard objectives add doors dummy Doors
scoreboard players add top_door doors 1

execute if score top_door doors matches 2.. run scoreboard players set top_door doors 0

execute if score top_door doors matches 1 run scoreboard players add usage values 1
execute if score top_door doors matches 0 run scoreboard players remove usage values 1