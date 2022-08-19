execute rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~20 ~ {Tags:["cupr.bolt_axe","cupr.bolt_source"]}
execute rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["cupr.bolt_axe","cupr.bolt_target"]}
execute as @e[tag=cupr.bolt_axe,tag=cupr.bolt_target,tag=!cupr.marked] at @s run function cuprum:util/highest
tag @e[tag=cupr.bolt_axe,tag=cupr.bolt_target,tag=!cupr.marked] add cupr.marked
execute if entity @s[predicate=cuprum:copper_check/charged/mainhand,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run item modify entity @s weapon.mainhand cuprum:copper/charge/discharge
execute if entity @s[predicate=cuprum:copper_check/charged/offhand,nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b}]}] run item modify entity @s weapon.offhand cuprum:copper/charge/discharge