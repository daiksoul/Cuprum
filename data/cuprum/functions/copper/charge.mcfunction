execute if entity @s[predicate=cuprum:copper_check/head] run item modify entity @s armor.head cuprum:copper/charge/charge_armor

execute if entity @s[predicate=cuprum:copper_check/chest] run item modify entity @s armor.chest cuprum:copper/charge/charge_armor

execute if entity @s[predicate=cuprum:copper_check/legs] run item modify entity @s armor.legs cuprum:copper/charge/charge_armor

execute if entity @s[predicate=cuprum:copper_check/feet] run item modify entity @s armor.feet cuprum:copper/charge/charge_armor

execute if entity @s[predicate=cuprum:copper_check/offhand] run function cuprum:util/check_tool_off
execute if entity @s[predicate=cuprum:copper_check/offhand] if score #TOOLTYPE cupr.val1 matches 5.. run item modify entity @s weapon.offhand cuprum:copper/charge/charge_armor
execute if entity @s[predicate=cuprum:copper_check/offhand] if score #TOOLTYPE cupr.val1 matches ..4 run item modify entity @s weapon.offhand cuprum:copper/charge/charge_tool
scoreboard players reset #TOOLTYPE cupr.val1

execute if entity @s[predicate=cuprum:copper_check/mainhand] run function cuprum:util/check_tool_main
execute if entity @s[predicate=cuprum:copper_check/mainhand] if score #TOOLTYPE cupr.val1 matches 5.. run item modify entity @s weapon.mainhand cuprum:copper/charge/charge_armor
execute if entity @s[predicate=cuprum:copper_check/mainhand] if score #TOOLTYPE cupr.val1 matches ..4 run item modify entity @s weapon.mainhand cuprum:copper/charge/charge_tool
scoreboard players reset #TOOLTYPE cupr.val1