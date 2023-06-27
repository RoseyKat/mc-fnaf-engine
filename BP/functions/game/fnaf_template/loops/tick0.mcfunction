# This function runs every tick.

scoreboard objectives add console dummy Console
scoreboard players add time console 1

# This command will make any spectators see what camera the guard is currently on
execute as @a[tag=guard] at @s unless entity @a[tag=guard,tag=camera] run camera @a[tag=spectator] set minecraft:free pos 20 -58 36 rot 0 90

# Win when it hits 6am
execute if score time values matches 6 run function game/fnaf_template/win/guard

# Basic game loops
function game/fnaf_template/loops/door/controller
function game/fnaf_template/loops/values/title
function game/fnaf_template/loops/values/time
function game/fnaf_template/loops/values/power
function game/fnaf_template/loops/camera/teleport
function game/fnaf_template/loops/camera/title
function game/fnaf_template/loops/camera/limiter

# Other timed loops
function game/fnaf_template/loops/tick10
function game/fnaf_template/loops/tick20
function game/fnaf_template/loops/tick50
function game/fnaf_template/loops/tick80
function game/fnaf_template/loops/tick160

# Place animatronic teleport functions here:
function game/AI/template/tp