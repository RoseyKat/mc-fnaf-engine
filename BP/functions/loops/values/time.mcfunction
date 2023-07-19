scoreboard objectives add values dummy "Game Values"

# 20 ticks = 1 second
# 1200 ticks = 1 minute

# Times a number by 20 to get tick value.
# Example: 5(seconds) x 20(ticks) = 100 (seconds x 20)

# Set in-game time based off how much ticks have passed
# The game lasts for 7 minutes
execute if score time console matches ..1200 run scoreboard players set time values 12
execute if score time console matches 1200..2400 run scoreboard players set time values 1
execute if score time console matches 2400..3600 run scoreboard players set time values 2
execute if score time console matches 3600..4800 run scoreboard players set time values 3
execute if score time console matches 4800..6000 run scoreboard players set time values 4
execute if score time console matches 6000..8400 run scoreboard players set time values 5
execute if score time console matches 8401.. run scoreboard players set time values 6