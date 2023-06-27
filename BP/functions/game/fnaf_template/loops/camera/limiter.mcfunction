# This will set camera position back to the start if the guard has gone to the last one
execute as @a[tag=camera] if score @s camera matches 0 run scoreboard players set @s camera 3
execute as @a[tag=camera] if score @s camera matches 4.. run scoreboard players set @s camera 1

# And this does the same but with the camera memory instead
execute as @a[tag=camera] if score @s camera_cache matches 0 run scoreboard players set @s camera_cache 3
execute as @a[tag=camera] if score @s camera_cache matches 4.. run scoreboard players set @s camera_cache 1