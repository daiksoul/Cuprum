summon marker ~ ~1 ~ {Tags:["cupr.bolt_axis","cupr.bolt_armor"]}
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid0 run data get entity @s UUID[0] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid1 run data get entity @s UUID[1] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid2 run data get entity @s UUID[2] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] cupr.uuid3 run data get entity @s UUID[3] 1
execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked] at @s run function cuprum:lightning/armor/loop_axis
tag @e[tag=cupr.bolt_axis,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] add cupr.marked