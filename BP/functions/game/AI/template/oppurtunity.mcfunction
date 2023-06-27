# This function runs every 4 seconds or 80 ticks

# Create a random number from 1 to 20
scoreboard players random move template_ai 1 20

# If the random number is the same or lower than the AI level then move
execute if score move template_ai <= diff template_ai run function game/AI/template/move

# This is also how the actual AI from the real fnaf actually works!