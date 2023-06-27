# This function will run every 20 ticks (1s)

scoreboard objectives add console dummy Console
scoreboard players add tick20 console 1

# On every 20th tick, check if usage is 4 and power is still remaining, and if all are successful then remove 1 power
execute if score tick20 console matches 20 if score usage values matches 4 unless score power values matches ..0 run scoreboard players remove power values 1


# On every 20th tick set the timer back to 0
execute if score tick20 console matches 20.. run scoreboard players set tick20 console 0