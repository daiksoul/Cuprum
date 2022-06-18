execute anchored eyes run summon marker ^ ^ ^0.01 {Tags:["cupr.bolt_axis","cupr.bolt_sword"]}
data modify entity @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] data.OwnerId set from entity @s UUID
execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~30 ~
execute anchored eyes rotated as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] run summon marker ^-4 ^ ^1 {Tags:["cupr.bolt_guide","cupr.unmarked","cupr.bolt_sword"]}
data modify entity @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked,sort=nearest,limit=1] Rotation set from entity @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] Rotation
scoreboard players set @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] cupr.val1 0
scoreboard players set @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] cupr.val2 0
tag @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,tag=cupr.unmarked] remove cupr.unmarked
execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] rotated as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,sort=nearest,limit=1] positioned ^-4 ^ ^1 run data modify entity @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,sort=nearest,limit=1] data.ParentId set from entity @s UUID
item modify entity @s weapon.mainhand cuprum:copper/charge/discharge