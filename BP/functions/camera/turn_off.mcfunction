scoreboard players set @s camera -1

camera @s set minecraft:first_person default

scoreboard players remove usage values 1

clear @s fnaf:camera_next
clear @s fnaf:camera_prev
replaceitem entity @s slot.hotbar 0 fnaf:camera_off 1 0 {"item_lock": {"mode": "lock_in_slot"}}

tag @s remove camera

playsound camera.flip @a