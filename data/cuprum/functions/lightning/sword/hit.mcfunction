#axis
execute anchored eyes run summon marker ^ ^ ^0.01 {Tags:["cupr.bolt_axis","cupr.bolt_sword","cupr.unmarked"]}
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid0 run data get entity @s UUID[0] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid1 run data get entity @s UUID[1] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid2 run data get entity @s UUID[2] 1
execute store result score @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid3 run data get entity @s UUID[3] 1
tag @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,tag=cupr.unmarked] remove cupr.unmarked

data modify entity @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] Rotation set from entity @s Rotation

execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~30 ~

#guide
execute anchored eyes rotated as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] run summon marker ^-4 ^ ^1 {Tags:["cupr.bolt_guide","cupr.unmarked","cupr.bolt_sword"]}

data modify entity @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] Rotation set from entity @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] Rotation
execute store result score @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid0 run data get entity @s UUID[0] 1
execute store result score @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid1 run data get entity @s UUID[1] 1
execute store result score @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid2 run data get entity @s UUID[2] 1
execute store result score @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] cupr.uuid3 run data get entity @s UUID[3] 1

scoreboard players set @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] cupr.val1 0
scoreboard players set @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] cupr.val2 0

tag @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] remove cupr.unmarked

item modify entity @s weapon.mainhand cuprum:copper/charge/discharge