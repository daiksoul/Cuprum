#number of copper items
scoreboard players set @s cupr.copper_cnt 0
execute if data entity @s SelectedItem.id run scoreboard players add @s[predicate=cuprum:copper_check/mainhand] cupr.copper_cnt 1
execute if data entity @s Inventory[{Slot:-106b}].id run scoreboard players add @s[predicate=cuprum:copper_check/offhand] cupr.copper_cnt 1
execute if data entity @s Inventory[{Slot:100b}].id run scoreboard players add @s[predicate=cuprum:copper_check/feet] cupr.copper_cnt 1
execute if data entity @s Inventory[{Slot:101b}].id run scoreboard players add @s[predicate=cuprum:copper_check/legs] cupr.copper_cnt 1
execute if data entity @s Inventory[{Slot:102b}].id run scoreboard players add @s[predicate=cuprum:copper_check/chest] cupr.copper_cnt 1
execute if data entity @s Inventory[{Slot:103b}].id run scoreboard players add @s[predicate=cuprum:copper_check/head] cupr.copper_cnt 1