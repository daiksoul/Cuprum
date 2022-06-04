execute if score @s cupr.copper_equ matches 32.. run item modify entity @s armor.head cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 32.. run scoreboard players remove @s cupr.copper_equ 32

execute if score @s cupr.copper_equ matches 16.. run item modify entity @s armor.chest cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 16.. run scoreboard players remove @s cupr.copper_equ 16

execute if score @s cupr.copper_equ matches 8.. run item modify entity @s armor.feet cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 8.. run scoreboard players remove @s cupr.copper_equ 8

execute if score @s cupr.copper_equ matches 4.. run item modify entity @s armor.legs cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 4.. run scoreboard players remove @s cupr.copper_equ 4

execute if score @s cupr.copper_equ matches 2.. run function cuprum:util/check_tool_off
execute if score @s cupr.copper_equ matches 2.. if score #TOOLTYPE cupr.val1 matches 5.. run item modify entity @s weapon.offhand cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 2.. if score #TOOLTYPE cupr.val1 matches ..4 run item modify entity @s weapon.offhand cuprum:copper/charge/charge_tool
execute if score @s cupr.copper_equ matches 2.. run scoreboard players remove @s cupr.copper_equ 2
scoreboard players reset #TOOLTYPE cupr.val1

execute if score @s cupr.copper_equ matches 1.. run function cuprum:util/check_tool_main
execute if score @s cupr.copper_equ matches 1.. if score #TOOLTYPE cupr.val1 matches 5.. run item modify entity @s weapon.mainhand cuprum:copper/charge/charge_armor
execute if score @s cupr.copper_equ matches 1.. if score #TOOLTYPE cupr.val1 matches ..4 run item modify entity @s weapon.mainhand cuprum:copper/charge/charge_tool
execute if score @s cupr.copper_equ matches 1.. run scoreboard players remove @s cupr.copper_equ 1
scoreboard players reset #TOOLTYPE cupr.val1