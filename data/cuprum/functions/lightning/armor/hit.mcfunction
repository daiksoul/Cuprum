summon marker ~ ~1 ~ {Tags:["cupr.bolt_axis","cupr.bolt_armor"]}
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid0 run data get entity @s UUID[0] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid1 run data get entity @s UUID[1] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid2 run data get entity @s UUID[2] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid3 run data get entity @s UUID[3] 1
execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] at @s run function cuprum:lightning/armor/loop_axis
tag @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] add cupr.marked

execute if data entity @s Inventory[{Slot:103b}].tag.cuprum{charged:1b} run item modify entity @s armor.head cuprum:copper/charge/discharge_armor
execute if data entity @s Inventory[{Slot:102b}].tag.cuprum{charged:1b} run item modify entity @s armor.chest cuprum:copper/charge/discharge_armor
execute if data entity @s Inventory[{Slot:101b}].tag.cuprum{charged:1b} run item modify entity @s armor.legs cuprum:copper/charge/discharge_armor
execute if data entity @s Inventory[{Slot:100b}].tag.cuprum{charged:1b} run item modify entity @s armor.feet cuprum:copper/charge/discharge_armor