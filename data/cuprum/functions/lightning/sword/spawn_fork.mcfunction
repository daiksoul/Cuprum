scoreboard players add @e[tag=cupr.bolt_guide,distance=..20,limit=1,scores={cupr.val2=0}] cupr.val2 1
data modify storage cupr:volatile Target set from entity @e[tag=cupr.bolt_guide,limit=1,scores={cupr.val2=1}] data.ParentId
data modify storage cupr:volatile Source set from entity @s UUID
function cuprum:util/compare_nbt

#success
execute if data storage cupr:volatile {Different:0} facing entity @e[tag=cupr.bolt_guide,limit=1,scores={cupr.val2=1}] feet run summon marker ^ ^ ^5 {Tags:["cupr.bolt_fork"]}
execute if data storage cupr:volatile {Different:0} run data modify entity @e[tag=cupr.bolt_fork,tag=!cupr.marked,sort=nearest,limit=1] data.ParentId set from entity @s UUID
execute if data storage cupr:volatile {Different:0} run data modify entity @e[tag=cupr.bolt_fork,tag=!cupr.marked,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute if data storage cupr:volatile {Different:0} as @e[tag=cupr.bolt_fork,tag=!cupr.marked,sort=nearest,limit=1] at @s run function cuprum:lightning/sword/offset_fork
execute if data storage cupr:volatile {Different:0} run scoreboard players add @s cupr.val1 1
execute if data storage cupr:volatile {Different:0} run scoreboard players operation @e[tag=cupr.bolt_fork,tag=!cupr.marked,limit=1] cupr.val1 = @s cupr.val1
execute if data storage cupr:volatile {Different:0} run tag @e[tag=cupr.bolt_fork,tag=!cupr.marked] add cupr.marked
execute if data storage cupr:volatile {Different:0} run scoreboard players set @e[tag=cupr.bolt_guide,scores={cupr.val2=1..}] cupr.val2 0

#fail
execute if data storage cupr:volatile {Different:1} run scoreboard players set @e[tag=cupr.bolt_guide,scores={cupr.val2=1}] cupr.val2 2
execute if data storage cupr:volatile {Different:1} unless entity @e[tag=cupr.bolt_guide,scores={cupr.val2=0},distance=..7] run scoreboard players set @e[tag=cupr.bolt_guide,scores={cupr.val2=1..}] cupr.val2 0
execute if data storage cupr:volatile {Different:1} if entity @e[tag=cupr.bolt_guide,scores={cupr.val2=0},distance=..7] run function cuprum:lightning/sword/spawn_fork

data remove storage cupr:volatile Different