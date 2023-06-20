scoreboard objectives add console dummy Console
scoreboard players add tick160 console 1

execute if score tick160 console matches 160 if score usage values matches 1 unless score power values matches ..0 run scoreboard players remove power values 1



execute if score tick160 console matches 160.. run scoreboard players set tick160 console 0