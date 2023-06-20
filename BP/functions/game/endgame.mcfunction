kill @e

clear @a
effect @a clear
tag @a remove camera
tag @a remove guard
tag @a remove spectator
gamemode a @a
fog @a pop guard_fog
inputpermission set @a movement enabled
inputpermission set @a camera enabled
scoreboard players set @a camera -1
scoreboard players set @a camera_cache -1
scoreboard players set left_door doors 0
scoreboard players set right_door doors 0
scoreboard players set left_light doors 0
scoreboard players set right_light doors 0
scoreboard players set top_door doors 0
scoreboard players set bottom_door doors 0
scoreboard players set top_light doors 0
scoreboard players set bottom_light doors 0
scoreboard players set power_sfx_played console 0
camera @a clear
tp @a 0 -60 0

scoreboard objectives add console dummy Console
scoreboard players set game console 0

music stop 5