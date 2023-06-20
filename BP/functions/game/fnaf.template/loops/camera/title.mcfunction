execute as @a[tag=camera] if score @s camera matches 1 run titleraw @a actionbar {"rawtext":[{"text":"Backroom\nCamera: "},{"score":{"objective":"camera","name":"@s"}}]}

execute as @a[tag=camera] if score @s camera matches 2 run titleraw @a actionbar {"rawtext":[{"text":"Left Hallway\nCamera: "},{"score":{"objective":"camera","name":"@s"}}]}

execute as @a[tag=camera] if score @s camera matches 3 run titleraw @a actionbar {"rawtext":[{"text":"Right Hallway\nCamera: "},{"score":{"objective":"camera","name":"@s"}}]}