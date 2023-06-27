scoreboard objectives add template_ai dummy "Template AI"

# If a player has template_up item then add up the AI level, play a click sound, place everything again into the chest, and then get rid of the item
execute as @a[hasitem={item=fnaf:template_up}] run scoreboard players add diff template_ai 1
execute as @a[hasitem={item=fnaf:template_up}] run playsound click @s
execute as @a[hasitem={item=fnaf:template_up}] run function lobby/place
execute as @a[hasitem={item=fnaf:template_up}] run clear @a fnaf:template_up

# Works the same but lowers AI level instead
execute as @a[hasitem={item=fnaf:template_down}] run scoreboard players remove diff template_ai 1
execute as @a[hasitem={item=fnaf:template_down}] run playsound click @s
execute as @a[hasitem={item=fnaf:template_down}] run function lobby/place
execute as @a[hasitem={item=fnaf:template_down}] run clear @a fnaf:template_down

# Don't let AI level go above 20, or below 0
execute if score diff template_ai matches ..-1 run scoreboard players set diff template_ai 0
execute if score diff template_ai matches 21.. run scoreboard players set diff template_ai 20
# Having it go above 20 will not raise difficulty alone, you can if you also go edit the AI's oppurtunity function as well