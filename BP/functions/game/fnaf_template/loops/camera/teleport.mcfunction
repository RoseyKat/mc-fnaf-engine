# This will set camera position when on cams, this also affects spectators
execute as @a[tag=camera] if score @s camera matches 1 run camera @a set minecraft:free pos CORD_CAM1POS rot CORD_CAM1ROT
execute as @a[tag=camera] if score @s camera matches 2 run camera @a set minecraft:free pos CORD_CAM2POS rot CORD_CAM2ROT
execute as @a[tag=camera] if score @s camera matches 3 run camera @a set minecraft:free pos CORD_CAM3POS rot CORD_CAM3ROT
