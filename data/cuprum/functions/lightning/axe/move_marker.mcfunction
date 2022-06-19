summon marker ~ ~ ~ {Tags:["cupr.n1","cupr.bolt_axe","cupr.bolt_fork"]}
summon marker ~ ~ ~ {Tags:["cupr.n2","cupr.bolt_axe","cupr.bolt_fork"]}
summon marker ~ ~ ~ {Tags:["cupr.n3","cupr.bolt_axe","cupr.bolt_fork"]}

execute as @e[tag=cupr.bolt_axe,tag=cupr.bolt_fork,tag=!cupr.marked] at @s run function cuprum:lightning/axe/offset_fork
tag @e[tag=cupr.bolt_axe,tag=cupr.bolt_fork,tag=!cupr.marked] add cupr.marked
playsound entity.lightning_bolt.thunder weather @a[distance=..20] ~ ~ ~ 4 1.5

execute if entity @e[tag=cupr.bolt_axe,tag=cupr.bolt_target,distance=..0.5] run function cuprum:lightning/axe/kill_marker
tp @s ~ ~-2 ~