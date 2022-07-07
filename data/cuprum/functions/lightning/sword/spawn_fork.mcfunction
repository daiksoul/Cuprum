#playsound
execute as @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,distance=..20] if score @s cupr.uuid0 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid0 if score @s cupr.uuid1 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid1 if score @s cupr.uuid2 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid2 if score @s cupr.uuid3 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid3 facing entity @s feet positioned ^ ^ ^5 run playsound entity.lightning_bolt.thunder weather @a[distance=..20] ~ ~ ~ 4 1.5

#summon
execute as @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,distance=..20] if score @s cupr.uuid0 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid0 if score @s cupr.uuid1 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid1 if score @s cupr.uuid2 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid2 if score @s cupr.uuid3 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid3 facing entity @s feet run summon marker ^ ^ ^5 {Tags:["cupr.bolt_fork","cupr.bolt_sword","cupr.n1"]}
execute as @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,distance=..20] if score @s cupr.uuid0 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid0 if score @s cupr.uuid1 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid1 if score @s cupr.uuid2 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid2 if score @s cupr.uuid3 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid3 facing entity @s feet run summon marker ^ ^ ^5 {Tags:["cupr.bolt_fork","cupr.bolt_sword","cupr.n2"]}
execute as @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,distance=..20] if score @s cupr.uuid0 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid0 if score @s cupr.uuid1 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid1 if score @s cupr.uuid2 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid2 if score @s cupr.uuid3 = @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid3 facing entity @s feet run summon marker ^ ^ ^5 {Tags:["cupr.bolt_fork","cupr.bolt_sword","cupr.n3"]}
#uuids
execute at @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] run scoreboard players operation @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid0 = @s cupr.uuid0
execute at @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] run scoreboard players operation @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid1 = @s cupr.uuid1
execute at @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] run scoreboard players operation @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid2 = @s cupr.uuid2
execute at @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] run scoreboard players operation @e[limit=1,sort=nearest,distance=..0.01] cupr.uuid3 = @s cupr.uuid3

#rotation & offset
execute at @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] run data modify entity @e[limit=1,sort=nearest,distance=..0.01] Rotation set from entity @s Rotation
execute as @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] at @s run function cuprum:lightning/sword/offset_fork
tag @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=!cupr.marked] add cupr.marked