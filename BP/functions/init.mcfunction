# Load map
structure load map.template 15 -64 15

# Create the guard, and make any other players spectate
tag @r[tag=force_guard] add guard
execute unless entity @a[tag=guard] run tag @r add guard
tag @a[tag=!guard] add spectator

# Add console objective in case it doesn't exist
scoreboard objectives add console dummy Console

# Reset camera position
scoreboard players set @a camera_cache 1

# Set values
scoreboard players set power values 100
scoreboard players set usage values 1
scoreboard players set time values 12
scoreboard players set time console 0

# Specify game is running
scoreboard players set game console 1

# Lock camera
camera @a[tag=guard] set minecraft:first_person default

# Set gamemodes
gamemode spectator @a[tag=spectator]
gamemode a @a[tag=guard]

# Teleport
tp @a[tag=guard] 16 -60 36 facing 19 -60 36

# Disable inputs
inputpermission set @a movement disabled
inputpermission set @a[tag=spectator] camera disabled

# Music
music play ambience.fnaf3 0.75 5 loop

# Fog
fog @a push fnaf:guard_fog guard_fog

# Camera item
replaceitem entity @a[tag=guard] slot.hotbar 0 fnaf:camera_off 1 0 {"item_lock": { "mode": "lock_in_slot" }}

# Summon animatronics
function AI/template/summon