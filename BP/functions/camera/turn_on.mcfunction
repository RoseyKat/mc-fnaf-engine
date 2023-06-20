scoreboard players operation @s camera = @s camera_cache

scoreboard players add usage values 1

tag @s add camera

replaceitem entity @s slot.hotbar 0 fnaf:camera_on 1 0 {"item_lock": {"mode": "lock_in_slot"}}
replaceitem entity @s slot.hotbar 1 fnaf:camera_next 1 0 {"item_lock": {"mode": "lock_in_slot"}}
replaceitem entity @s slot.hotbar 2 fnaf:camera_prev 1 0 {"item_lock": {"mode": "lock_in_slot"}}

playsound camera.flip @a