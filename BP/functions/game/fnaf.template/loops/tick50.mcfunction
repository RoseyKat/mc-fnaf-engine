scoreboard objectives add console dummy Console
scoreboard players add tick50 console 1

execute if score tick50 console matches 50 if score usage values matches 3 unless score power values matches ..0 run scoreboard players remove power values 1



execute if score tick50 console matches 50.. run scoreboard players set tick50 console 0