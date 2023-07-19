# This function will run every 50 ticks (2.5s)

scoreboard objectives add console dummy Console
scoreboard players add tick50 console 1

# On every 50th tick, check if usage is 3 and power is still remaining, and if all are successful then remove 1 power
execute if score tick50 console matches 50 if score usage values matches 3 unless score power values matches ..0 run scoreboard players remove power values 1


# On every 50th tick set the timer back to 0
execute if score tick50 console matches 50.. run scoreboard players set tick50 console 0
