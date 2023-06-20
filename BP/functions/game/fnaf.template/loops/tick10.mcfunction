scoreboard objectives add console dummy Console
scoreboard players add tick10 console 1

execute if score tick10 console matches 10 if score usage values matches 5.. unless score power values matches ..0 run scoreboard players remove power values 1



execute if score tick10 console matches 10.. run scoreboard players set tick10 console 0