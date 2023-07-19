# This function runs every tick.

scoreboard objectives add console dummy Console
scoreboard players add time console 1

# This command will make any spectators see what camera the guard is currently on
execute as @a[tag=guard] at @s unless entity @a[tag=guard,tag=camera] run camera @a[tag=spectator] set minecraft:free pos 20 -58 36 rot 0 90

# Win when it hits 6am
execute if score time values matches 6 run function win/guard

# Basic game loops
function loops/door/controller
function loops/values/title
function loops/values/time
function loops/values/power

# Camera loops
function camera/loops/pos
function camera/loops/title
function camera/loops/limiter

# Other timed loops
function loops/tick10
function loops/tick20
function loops/tick50
function loops/tick80
function loops/tick160

# Place animatronic teleport functions here:
function AI/template/tp