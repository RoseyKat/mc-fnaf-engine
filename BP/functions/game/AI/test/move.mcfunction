# Kill guard if the corresponding doors are open and the animatronic is at them
execute if score loc test_ai matches 3 unless score bottom_light doors matches 1 run function game/fnaf_template/win/anim

# Store where the animatronic just was.
# This is needed as the animatronics location changed it's location from where it's current location is.
scoreboard players operation loc_was test_ai = loc test_ai

######################
# MOVE FROM 1 TO 2 #
######################

# If location is 1, and the animatronic hasn't move from a command above, then move to location 2
execute if score loc test_ai matches 1 unless score moved test_ai matches 1 run scoreboard players set loc test_ai 2

# Set that the animatronic has already moved in this instance so the next command doesn't move it again
execute if score loc_was test_ai matches 1 run scoreboard players set moved test_ai 1


######################
# MOVE FROM 2 TO 3 #
######################

# If location is 1, and the animatronic hasn't move from a command above, then move to location 2
execute if score loc test_ai matches 2 unless score moved test_ai matches 1 run scoreboard players set loc test_ai 3

# Set that the animatronic has already moved in this instance so the next command doesn't move it again
execute if score loc_was test_ai matches 2 run scoreboard players set moved test_ai 1


######################
# MOVE FROM 3 TO 1 #
######################

# If location is 1, and the animatronic hasn't move from a command above, then move to location 2
execute if score loc test_ai matches 3 unless score moved test_ai matches 1 run scoreboard players set loc test_ai 1

# Set that the animatronic has already moved in this instance so the next command doesn't move it again
execute if score loc_was test_ai matches 3 run scoreboard players set moved test_ai 1

######################################################
# Do not place any movement commands below this one! #
######################################################
scoreboard players set moved test_ai 0