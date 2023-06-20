execute if score power values matches ..0 run scoreboard players set power values 0
execute if score power values matches ..0 run scoreboard players set usage values 0

execute if score power values matches ..0 run scoreboard players set left_door doors 0
execute if score power values matches ..0 run scoreboard players set right_door doors 0
execute if score power values matches ..0 run scoreboard players set top_door doors 0
execute if score power values matches ..0 run scoreboard players set bottom_door doors 0

execute if score power values matches ..0 run scoreboard players set left_light doors 0
execute if score power values matches ..0 run scoreboard players set right_light doors 0
execute if score power values matches ..0 run scoreboard players set top_light doors 0
execute if score power values matches ..0 run scoreboard players set bottom_light doors 0

# Removes the office light
execute if score power values matches ..0 run setblock 17 -57 36 air
execute if score power values matches 1.. run setblock 17 -57 36 fnaf:ceiling_light

execute if score power values matches ..0 if score power_sfx_played console matches 0 run playsound power.out @a
execute if score power values matches ..0 if score power_sfx_played console matches 0 run scoreboard players set power_sfx_played console 1

execute if score power values matches ..0 run clear @a
execute if score power values matches ..0 run scoreboard players set @s camera -1
execute if score power values matches ..0 run tag @a remove camera
execute if score power values matches ..0 run camera @a set minecraft:first_person default