execute if score @s cupr.val1 matches 1 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=2}] feet
execute if score @s cupr.val1 matches 2 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=3}] feet
execute if score @s cupr.val1 matches 3 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=4}] feet
execute if score @s cupr.val1 matches 4 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=5}] feet
execute if score @s cupr.val1 matches 5 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=6}] feet
execute if score @s cupr.val1 matches 6 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=7}] feet
execute if score @s cupr.val1 matches 7 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=8}] feet
execute if score @s cupr.val1 matches 8 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=9}] feet
execute if score @s cupr.val1 matches 9 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=10}] feet
execute if score @s cupr.val1 matches 10 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=11}] feet
execute if score @s cupr.val1 matches 11 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=12}] feet
execute if score @s cupr.val1 matches 12 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=13}] feet
execute if score @s cupr.val1 matches 13 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=14}] feet
execute if score @s cupr.val1 matches 14 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=15}] feet
execute if score @s cupr.val1 matches 15 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=16}] feet
execute if score @s cupr.val1 matches 16 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=17}] feet
execute if score @s cupr.val1 matches 17 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=18}] feet
execute if score @s cupr.val1 matches 18 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=19}] feet
execute if score @s cupr.val1 matches 19 run tp @s ~ ~ ~ facing entity @e[tag=cupr.bolt_fork,sort=nearest,limit=1,scores={cupr.val1=20}] feet
scoreboard players set @s cupr.val2 0
scoreboard players add @s cupr.thund_coold 1
kill @s[scores={cupr.thund_coold=30..}]
execute if score @s cupr.thund_coold matches 2.. run function cuprum:lightning/sword/fork_loop