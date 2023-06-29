scoreboard objectives add test_ai dummy "Template AI"

# If a player has test_up item then add up the AI level, play a click sound, place everything again into the chest, and then get rid of the item
execute as @a[hasitem={item=fnaf:test_up}] run scoreboard players add diff test_ai 1
execute as @a[hasitem={item=fnaf:test_up}] run playsound click @s
execute as @a[hasitem={item=fnaf:test_up}] run function lobby/place
execute as @a[hasitem={item=fnaf:test_up}] run clear @a fnaf:test_up

# Works the same but lowers AI level instead
execute as @a[hasitem={item=fnaf:test_down}] run scoreboard players remove diff test_ai 1
execute as @a[hasitem={item=fnaf:test_down}] run playsound click @s
execute as @a[hasitem={item=fnaf:test_down}] run function lobby/place
execute as @a[hasitem={item=fnaf:test_down}] run clear @a fnaf:test_down

# Don't let AI level go above 20, or below 0
execute if score diff test_ai matches ..-1 run scoreboard players set diff test_ai 0
execute if score diff test_ai matches 21.. run scoreboard players set diff test_ai 20
# Having it go above 20 will not raise difficulty alone, you can if you also go edit the AI's oppurtunity function as well