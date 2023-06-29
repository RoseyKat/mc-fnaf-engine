# This function runs every 4 seconds or 80 ticks

# Create a random number from 1 to 20
scoreboard players random move test_ai 1 20

# If the random number is the same or lower than the AI level then move
execute if score move test_ai <= diff test_ai run function game/AI/test/move

# This is also how the actual AI from the real fnaf actually works!