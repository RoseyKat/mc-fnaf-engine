# This function will run every 10 ticks (0.5s)

scoreboard objectives add console dummy Console
scoreboard players add tick10 console 1

# On every 10th tick, check if usage is over 5 and power is still remaining, and if all are successful then remove 1 power
execute if score tick10 console matches 10 if score usage values matches 5.. unless score power values matches ..0 run scoreboard players remove power values 1


# On every 10th tick set the timer back to 0
execute if score tick10 console matches 10.. run scoreboard players set tick10 console 0