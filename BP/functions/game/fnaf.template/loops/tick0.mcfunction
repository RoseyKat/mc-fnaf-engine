scoreboard objectives add console dummy Console
scoreboard players add time console 1

# Spectate
execute as @a[tag=guard] at @s unless entity @a[tag=guard,tag=camera] run camera @a[tag=spectator] set minecraft:free pos 20 -58 36 rot 0 90

execute if score time values matches 6 run function game/fnaf.template/win/guard

function game/fnaf.template/loops/door/controller
function game/fnaf.template/loops/values/title
function game/fnaf.template/loops/values/time
function game/fnaf.template/loops/values/power
function game/fnaf.template/loops/camera/teleport
function game/fnaf.template/loops/camera/title
function game/fnaf.template/loops/camera/limiter

function game/fnaf.template/loops/tick10
function game/fnaf.template/loops/tick20
function game/fnaf.template/loops/tick50
function game/fnaf.template/loops/tick80
function game/fnaf.template/loops/tick160

function game/AI/template/tp