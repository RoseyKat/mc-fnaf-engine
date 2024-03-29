# Kill guard if the corresponding doors are open and the animatronic is at them
execute if score loc template_ai matches 4 unless score left_door doors matches 1 run function win/anim
execute if score loc template_ai matches 7 unless score right_door doors matches 1 run function win/anim

execute as @a[tag=guard] if score @s camera matches 1.. run camera @a fade time 0 1 0

# Store where the animatronic just was.
# This is needed as the animatronics location changed it's location from where it's current location is.
scoreboard players operation loc_was template_ai = loc template_ai

######################
# MOVE FROM 1 TO 2/5 #
######################

# Create a random move from value to decide which direction to go
execute if score loc template_ai matches 1 run scoreboard players random move_from1 template_ai 1 2

# If location is 1, and move_from is 1, and the animatronic hasn't move from a command above, then move to location 2
execute if score loc template_ai matches 1 unless score moved template_ai matches 1 if score move_from1 template_ai matches 1 run scoreboard players set loc template_ai 2
# If location is 1, and move_from is 2, and the animatronic hasn't move from a command above, then move to location 2
execute if score loc template_ai matches 1 unless score moved template_ai matches 1 if score move_from1 template_ai matches 2 run scoreboard players set loc template_ai 5

# Set that the animatronic has already moved in this instance so the next command doesn't move it again
execute if score loc_was template_ai matches 1 run scoreboard players set moved template_ai 1

# The rest works the same.

####################################################################################################################################

# LEFT SIDE

#########################
# MOVE FROM 2 TO 3/1 #
#########################

execute if score loc template_ai matches 2 run scoreboard players random move_from2 template_ai 1 2

execute if score loc template_ai matches 2 unless score moved template_ai matches 1 if score move_from2 template_ai matches 1 run scoreboard players set loc template_ai 1
execute if score loc template_ai matches 2 unless score moved template_ai matches 1 if score move_from2 template_ai matches 2 run scoreboard players set loc template_ai 3

execute if score loc_was template_ai matches 2 run scoreboard players set moved template_ai 1

####################################################################################################################################

#########################
# MOVE FROM 3 TO 2/4 #
#########################

execute if score loc template_ai matches 3 run scoreboard players random move_from3 template_ai 1 2

execute if score loc template_ai matches 3 unless score moved template_ai matches 1 if score move_from3 template_ai matches 1 run scoreboard players set loc template_ai 2
execute if score loc template_ai matches 3 unless score moved template_ai matches 1 if score move_from3 template_ai matches 2 run scoreboard players set loc template_ai 4

execute if score loc_was template_ai matches 3 run scoreboard players set moved template_ai 1

####################################################################################################################################

####################
# MOVE FROM 4 TO 3 #
####################

execute if score loc template_ai matches 4 unless score moved template_ai matches 1 run scoreboard players set loc template_ai 3
execute if score loc_was template_ai matches 4 run playsound door.block @a

execute if score loc_was template_ai matches 4 run scoreboard players set moved template_ai 1

####################################################################################################################################




# RIGHT SIDE

#########################
# MOVE FROM 5 TO 6/1 #
#########################

execute if score loc template_ai matches 5 run scoreboard players random move_from5 template_ai 1 2

execute if score loc template_ai matches 5 unless score moved template_ai matches 1 if score move_from5 template_ai matches 1 run scoreboard players set loc template_ai 1
execute if score loc template_ai matches 5 unless score moved template_ai matches 1 if score move_from5 template_ai matches 2 run scoreboard players set loc template_ai 6

execute if score loc_was template_ai matches 5 run scoreboard players set moved template_ai 1

####################################################################################################################################

#########################
# MOVE FROM 6 TO 5/7 #
#########################

execute if score loc template_ai matches 6 run scoreboard players random move_from6 template_ai 1 2

execute if score loc template_ai matches 6 unless score moved template_ai matches 1 if score move_from6 template_ai matches 1 run scoreboard players set loc template_ai 5
execute if score loc template_ai matches 6 unless score moved template_ai matches 1 if score move_from6 template_ai matches 2 run scoreboard players set loc template_ai 7

execute if score loc_was template_ai matches 6 run scoreboard players set moved template_ai 1

####################################################################################################################################

####################
# MOVE FROM 7 TO 6 #
####################

execute if score loc template_ai matches 7 unless score moved template_ai matches 1 run scoreboard players set loc template_ai 6
execute if score loc_was template_ai matches 7 run playsound door.block @a

execute if score loc_was template_ai matches 7 run scoreboard players set moved template_ai 1

####################################################################################################################################

######################################################
# Do not place any movement commands below this one! #
######################################################
scoreboard players set moved template_ai 0