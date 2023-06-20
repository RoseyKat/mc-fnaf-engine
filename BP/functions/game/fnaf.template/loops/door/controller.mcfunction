execute if score left_door doors matches 1 run fill 18 -60 34 17 -60 34 fnaf:door_bottom
execute if score left_door doors matches 1 run fill 18 -58 34 17 -59 34 fnaf:door_base
execute if score left_door doors matches 0 unless score left_light doors matches 1 run fill 17 -60 34 18 -58 34 fnaf:black

execute if score right_door doors matches 1 run fill 17 -60 38 18 -60 38 fnaf:door_bottom
execute if score right_door doors matches 1 run fill 18 -59 38 17 -58 38 fnaf:door_base
execute if score right_door doors matches 0 unless score right_light doors matches 1 run fill 17 -60 38 18 -58 38 fnaf:black


execute if score left_light doors matches 1 unless score left_door doors matches 1 run fill 17 -60 34 18 -58 34 air
execute if score left_light doors matches 1 run setblock 17 -60 33 light_block ["block_light_level":5]

execute if score right_light doors matches 1 unless score right_door doors matches 1 run fill 17 -60 38 18 -58 38 air
execute if score right_light doors matches 1 run setblock 17 -60 39 light_block ["block_light_level":5]