# This function will run every 80 ticks (4s)

scoreboard objectives add console dummy Console
scoreboard players add tick80 console 1


# On every 80th tick do an animatronic movement oppurtunity
execute if score tick80 console matches 80 run function AI/template/oppurtunity


# On every 80th tick set the timer back to 0
execute if score tick80 console matches 80.. run scoreboard players set tick80 console 0