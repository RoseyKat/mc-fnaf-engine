# Tell the guard time, usage, and power when off cameras (since when on cams they will get info on what camera they are instead)
execute unless entity @a[tag=camera] run titleraw @a actionbar {"rawtext":[{"text":"§eTime§f: "},{"score":{"objective":"values","name":"time"}},{"text":"AM\n§aPower§f: "},{"score":{"objective":"values","name":"power_display"}},{"text":"%\nUsage: "},{"score":{"objective":"values","name":"usage"}}]} 