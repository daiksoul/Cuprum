#tellraw @a [{"score":{"name": "@s","objective": "cupr.val2"}}," ",{"score":{"name": "@s","objective": "cupr.val1"}}," ",{"nbt":"UUID[0]","entity": "@s"}]
tag @s add cupr.marked

execute if entity @e[type=!#cuprum:immune_ligtning,distance=..7.5,tag=!cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run summon marker ~ ~ ~ {Tags:["cupr.bolt_fork"]}
tp @e[tag=cupr.bolt_fork,tag=!cupr.marked,limit=1,sort=nearest] ~ ~ ~ facing entity @e[type=!#cuprum:immune_ligtning,limit=1,sort=nearest,distance=..7.5,tag=!cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] feet

scoreboard players operation @e[tag=cupr.bolt_fork,tag=!cupr.marked,limit=1,sort=nearest] cupr.val2 = @s cupr.val2

tag @e[type=!#cuprum:immune_ligtning,limit=1,sort=nearest,distance=..7.5,tag=!cupr.marked] add cupr.marked

execute as @e[tag=cupr.bolt_fork,tag=!cupr.marked,limit=1,sort=nearest] at @s run scoreboard players set @s cupr.copper_equ 0
execute as @e[tag=cupr.bolt_fork,tag=!cupr.marked,limit=1,sort=nearest] at @s run function cuprum:lightning/sword_loop2

scoreboard players remove @s cupr.val1 1

execute if score @s cupr.val1 matches 1.. if score @s cupr.val2 matches 1.. if entity @e[type=!#cuprum:immune_ligtning,tag=!cupr.marked,distance=..7.5,tag=!cupr.bolt_forked] run function cuprum:lightning/sword_loop

execute if score @s cupr.val1 matches ..0 run kill @s
execute if score @s cupr.val2 matches ..0 run kill @s
execute unless entity @e[type=!#cuprum:immune_ligtning,distance=..7.5,tag=!cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run kill @s