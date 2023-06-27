# This function will run every 80 ticks (4s)

scoreboard objectives add console dummy Console
scoreboard players add tick80 console 1

# On every 80th tick, check if usage is 2 and power is still remaining, and if all are successful then remove 1 power
execute if score tick80 console matches 80 if score usage values matches 2 unless score power values matches ..0 run scoreboard players remove power values 1

# On every 80th tick do an animatronic movement oppurtunity
execute if score tick80 console matches 80 run function game/AI/template/oppurtunity


# On every 80th tick set the timer back to 0
execute if score tick80 console matches 80.. run scoreboard players set tick80 console 0