structure load map.template 15 -64 15

# Create the guard, and make any other players spectate
tag @r[tag=force_guard] add guard
execute unless entity @a[tag=guard] run tag @r add guard
tag @a[tag=!guard] add spectator

scoreboard objectives add console dummy Console

scoreboard players set @a camera_cache 1

scoreboard players set power values 100
scoreboard players set usage values 1
scoreboard players set time values 12
scoreboard players set time console 0

scoreboard players set game console 1

camera @a[tag=guard] set minecraft:first_person default

gamemode spectator @a[tag=spectator]
gamemode a @a[tag=guard]

tp @a[tag=guard] 16 -60 36 facing 19 -60 36

inputpermission set @a movement disabled
inputpermission set @a[tag=spectator] camera disabled

music play ambience.fnaf3 0.75 5 loop

fog @a push fnaf:guard_fog guard_fog

replaceitem entity @a[tag=guard] slot.hotbar 0 fnaf:camera_off 1 0 {"item_lock": { "mode": "lock_in_slot" }}

function game/AI/template/summon