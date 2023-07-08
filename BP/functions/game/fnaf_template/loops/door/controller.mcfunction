# Shut left door if left door value is 1
execute if score left_door doors matches 1 run fill CORD_LEFTDOOR fnaf:door_bottom
execute if score left_door doors matches 1 run fill CORD_LEFTDOOR fnaf:door_base
# This will place a full black block if the door and light is off
execute if score left_door doors matches 0 unless score left_light doors matches 1 run fill CORD_LEFTDOOR fnaf:black

# Shut right door if right door value is 1
execute if score right_door doors matches 1 run fill CORD_RIGHTDOOR fnaf:door_bottom
execute if score right_door doors matches 1 run fill CORD_RIGHTDOOR fnaf:door_base
# This will place a full black block if the door and light is off
execute if score right_door doors matches 0 unless score right_light doors matches 1 run fill CORD_RIGHTDOOR fnaf:black


# Get rid of the black block when the light is on, and place a light source
execute if score left_light doors matches 1 unless score left_door doors matches 1 run fill CORD_LEFTDOOR air
execute if score left_light doors matches 1 run setblock CORD_LEFTLIGHT light_block ["block_light_level":5]

execute if score right_light doors matches 1 unless score right_door doors matches 1 run fill CORD_RIGHTDOOR air
execute if score right_light doors matches 1 run setblock CORD_RIGHTLIGHT light_block ["block_light_level":5]