scoreboard objectives add console dummy Console
scoreboard players add tick80 console 1

execute if score tick80 console matches 80 if score usage values matches 2 unless score power values matches ..0 run scoreboard players remove power values 1
execute if score tick80 console matches 80 run function game/AI/template/oppurtunity

execute if score tick80 console matches 80.. run scoreboard players set tick80 console 0