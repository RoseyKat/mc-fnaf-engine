# Clear inventory
clear @a
# Stop any sounds
stopsound @a
# And stop any music
music stop

# Run the initiation function
function game/fnaf_template/init

# Set that a game is playing
scoreboard objectives add console dummy Console
scoreboard players set game console 1

# This is so that the "start game" item gets back in the chest
function lobby/place