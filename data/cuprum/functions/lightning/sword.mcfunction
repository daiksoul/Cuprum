execute as @e[sort=nearest,nbt=!{HurtTime:0s},limit=1,distance=..5,type=!#cuprum:immune_ligtning] at @s run summon marker ~ ~1 ~ {Tags:[cupr.bolt_fork]}
execute as @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] store result score @s cupr.va2 run data get entity @s UUID[1] 1
scoreboard players operation @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] cupr.val2 %= #LIGHTNING_LEVELS cupr.const
execute as @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] at @s run function cuprum:lightning/sword_loop