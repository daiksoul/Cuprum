scoreboard players set #TOOLTYPE cupr.val1 -1

execute if data storage cupr:volatile {ToolID:"minecraft:iron_axe"} run scoreboard players set #TOOLTYPE cupr.val1 0
execute if data storage cupr:volatile {ToolID:"minecraft:iron_hoe"} run scoreboard players set #TOOLTYPE cupr.val1 1
execute if data storage cupr:volatile {ToolID:"minecraft:iron_pickaxe"} run scoreboard players set #TOOLTYPE cupr.val1 2
execute if data storage cupr:volatile {ToolID:"minecraft:iron_shovel"} run scoreboard players set #TOOLTYPE cupr.val1 3
execute if data storage cupr:volatile {ToolID:"minecraft:iron_sword"} run scoreboard players set #TOOLTYPE cupr.val1 4
execute if data storage cupr:volatile {ToolID:"minecraft:leather_helmet"} run scoreboard players set #TOOLTYPE cupr.val1 5
execute if data storage cupr:volatile {ToolID:"minecraft:leather_chestplate"} run scoreboard players set #TOOLTYPE cupr.val1 5
execute if data storage cupr:volatile {ToolID:"minecraft:leather_leggings"} run scoreboard players set #TOOLTYPE cupr.val1 5
execute if data storage cupr:volatile {ToolID:"minecraft:leather_boots"} run scoreboard players set #TOOLTYPE cupr.val1 5

data remove storage cupr:volatile ToolID