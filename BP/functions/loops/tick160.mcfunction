# This function will run every 160 ticks (8s)

scoreboard objectives add console dummy Console
scoreboard players add tick160 console 1

# On every 160th tick, check if usage is 1 and power is still remaining, and if all are successful then remove 1 power
execute if score tick160 console matches 160 if score usage values matches 1 unless score power values matches ..0 run scoreboard players remove power values 1


# On every 160th tick set the timer back to 0
execute if score tick160 console matches 160.. run scoreboard players set tick160 console 0