# Wait for any items to be picked up and run appropriate function
execute as @a[hasitem={item=fnaf:icon_template}] run replaceitem block -4 -60 0 slot.container 4 fnaf:icon_template 1 0 {"item_lock": {"mode": "lock_in_slot"}}
execute as @a[hasitem={item=fnaf:icon_template}] run clear @s fnaf:icon_template
execute as @a[hasitem={item=fnaf:template_up}] run function lobby/selects/anims/template
execute as @a[hasitem={item=fnaf:template_down}] run function lobby/selects/anims/template

execute as @a[hasitem={item=fnaf:start}] run function lobby/selects/start

function lobby/title