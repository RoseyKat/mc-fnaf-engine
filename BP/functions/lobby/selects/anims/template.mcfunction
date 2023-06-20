scoreboard objectives add template_ai dummy "Template AI"

execute as @a[hasitem={item=fnaf:template_up}] run scoreboard players add diff template_ai 1
execute as @a[hasitem={item=fnaf:template_up}] run playsound click @s
execute as @a[hasitem={item=fnaf:template_up}] run function lobby/place
execute as @a[hasitem={item=fnaf:template_up}] run clear @a fnaf:template_up

execute as @a[hasitem={item=fnaf:template_down}] run scoreboard players remove diff template_ai 1
execute as @a[hasitem={item=fnaf:template_down}] run playsound click @s
execute as @a[hasitem={item=fnaf:template_down}] run function lobby/place
execute as @a[hasitem={item=fnaf:template_down}] run clear @a fnaf:template_down

execute if score diff template_ai matches ..-1 run scoreboard players set diff template_ai 0
execute if score diff template_ai matches 21.. run scoreboard players set diff template_ai 20