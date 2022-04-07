scoreboard players set #TOOLTYPE cupr.val1 -1

execute if data storage cupr:volatile {ToolID:"minecraft:iron_axe"} run scoreboard players set #TOOLTYPE cupr.val1 0
execute if data storage cupr:volatile {ToolID:"minecraft:iron_hoe"} run scoreboard players set #TOOLTYPE cupr.val1 1
execute if data storage cupr:volatile {ToolID:"minecraft:iron_pickaxe"} run scoreboard players set #TOOLTYPE cupr.val1 2
execute if data storage cupr:volatile {ToolID:"minecraft:iron_shovel"} run scoreboard players set #TOOLTYPE cupr.val1 3
execute if data storage cupr:volatile {ToolID:"minecraft:iron_sword"} run scoreboard players set #TOOLTYPE cupr.val1 4

data remove storage cupr:volatile ToolID