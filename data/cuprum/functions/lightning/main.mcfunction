execute as @a[scores={cupr.use_axe=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/axe
execute as @a[scores={cupr.use_hoe=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/hoe
execute as @a[scores={cupr.use_pic=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/pickaxe
execute as @a[scores={cupr.use_sho=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/shovel
execute as @a[scores={cupr.use_swo=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/sword

tag @a[scores={cupr.use_axe=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] add cupr.using_bolt
tag @a[scores={cupr.use_hoe=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] add cupr.using_bolt
tag @a[scores={cupr.use_pic=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] add cupr.using_bolt
tag @a[scores={cupr.use_sho=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] add cupr.using_bolt
tag @a[scores={cupr.use_swo=1..},predicate=cuprum:copper_check/mainhand,tag=!cupr.using_bolt] add cupr.using_bolt

scoreboard players set @a[scores={cupr.use_axe=1..}] cupr.use_axe 0
scoreboard players set @a[scores={cupr.use_hoe=1..}] cupr.use_hoe 0
scoreboard players set @a[scores={cupr.use_pic=1..}] cupr.use_pic 0
scoreboard players set @a[scores={cupr.use_sho=1..}] cupr.use_sho 0
scoreboard players set @a[scores={cupr.use_swo=1..}] cupr.use_swo 0