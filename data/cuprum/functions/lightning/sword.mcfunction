tag @s add cupr.using_bolt

execute as @e[sort=nearest,limit=1,distance=..5,type=!#cuprum:immune_ligtning,tag=!cupr.marked,tag=!cupr.using_bolt,nbt=!{HurtTime:0s}] at @s run summon marker ~ ~ ~ {Tags:["cupr.bolt_fork"]}
execute as @e[sort=nearest,limit=1,distance=..5,type=!#cuprum:immune_ligtning,tag=!cupr.marked,tag=!cupr.using_bolt,nbt=!{HurtTime:0s}] run tag @s add cupr.bolt_forked

execute as @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] store result score @s cupr.val2 run data get entity @s UUID[1] 1
scoreboard players operation @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] cupr.val2 %= #LIGHTNING_LEVELS cupr.const
scoreboard players operation @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] cupr.val2 += #LIGHTNING_LEVELSBASE cupr.const

execute as @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] store result score @s cupr.val1 run data get entity @s UUID[0] 1
scoreboard players operation @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] cupr.val1 %= #LIGHTNING_FORKS cupr.const
scoreboard players operation @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] cupr.val1 += #LIGHTNING_FORKSBASE cupr.const

execute as @e[tag=cupr.bolt_fork,sort=nearest,tag=!cupr.marked] at @s run function cuprum:lightning/sword_loop

tag @e[tag=cupr.marked] remove cupr.marked
tag @e[tag=cupr.bolt_forked] remove cupr.bolt_forked
tag @s remove cupr.using_bolt

item modify entity @s weapon.mainhand cuprum:copper/charge/discharge

playsound entity.lightning_bolt.thunder player @a[distance=..20] ~ ~ ~ 1 1 1
playsound entity.lightning_bolt.impact player @a[distance=..20] ~ ~ ~ 1 1 1