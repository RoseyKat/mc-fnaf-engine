# Wait for any items to be picked up and run appropriate function
execute as @a[hasitem={item=fnaf:icon_template}] run clear @s fnaf:icon_template
execute as @a[hasitem={item=fnaf:template_up}] run function lobby/selects/anims/template
execute as @a[hasitem={item=fnaf:template_down}] run function lobby/selects/anims/template

execute as @a[hasitem={item=fnaf:test_up}] run function lobby/selects/anims/test
execute as @a[hasitem={item=fnaf:test_down}] run function lobby/selects/anims/test

execute as @a[hasitem={item=fnaf:start}] run function lobby/selects/start

function lobby/title