scoreboard objectives add console dummy Console
scoreboard players add tick20 console 1

execute if score tick20 console matches 20 if score usage values matches 4 unless score power values matches ..0 run scoreboard players remove power values 1



execute if score tick20 console matches 20.. run scoreboard players set tick20 console 0