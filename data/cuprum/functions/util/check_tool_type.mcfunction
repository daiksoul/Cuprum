scoreboard players set #TOOLTYPE cupr.val1 -1
scoreboard players set #TMP cupr.val1 -1

execute if score #TOOLTYPE cupr.val1 matches -1 run data modify storage cupr:volatile ToolID2 set from storage cupr:volatile ToolID
execute if score #TOOLTYPE cupr.val1 matches -1 store success score #TMP cupr.val1 run data modify storage cupr:volatile ToolID2 set value "minecraft:iron_axe"
execute if score #TOOLTYPE cupr.val1 matches -1 if score #TMP cupr.val1 matches 0 run scoreboard players set #TOOLTYPE cupr.val1 0

execute if score #TOOLTYPE cupr.val1 matches -1 run data modify storage cupr:volatile ToolID2 set from storage cupr:volatile ToolID
execute if score #TOOLTYPE cupr.val1 matches -1 store success score #TMP cupr.val1 run data modify storage cupr:volatile ToolID2 set value "minecraft:iron_hoe"
execute if score #TOOLTYPE cupr.val1 matches -1 if score #TMP cupr.val1 matches 0 run scoreboard players set #TOOLTYPE cupr.val1 1

execute if score #TOOLTYPE cupr.val1 matches -1 run data modify storage cupr:volatile ToolID2 set from storage cupr:volatile ToolID
execute if score #TOOLTYPE cupr.val1 matches -1 store success score #TMP cupr.val1 run data modify storage cupr:volatile ToolID2 set value "minecraft:iron_pickaxe"
execute if score #TOOLTYPE cupr.val1 matches -1 if score #TMP cupr.val1 matches 0 run scoreboard players set #TOOLTYPE cupr.val1 2

execute if score #TOOLTYPE cupr.val1 matches -1 run data modify storage cupr:volatile ToolID2 set from storage cupr:volatile ToolID
execute if score #TOOLTYPE cupr.val1 matches -1 store success score #TMP cupr.val1 run data modify storage cupr:volatile ToolID2 set value "minecraft:iron_shovel"
execute if score #TOOLTYPE cupr.val1 matches -1 if score #TMP cupr.val1 matches 0 run scoreboard players set #TOOLTYPE cupr.val1 3

execute if score #TOOLTYPE cupr.val1 matches -1 run data modify storage cupr:volatile ToolID2 set from storage cupr:volatile ToolID
execute if score #TOOLTYPE cupr.val1 matches -1 store success score #TMP cupr.val1 run data modify storage cupr:volatile ToolID2 set value "minecraft:iron_sword"
execute if score #TOOLTYPE cupr.val1 matches -1 if score #TMP cupr.val1 matches 0 run scoreboard players set #TOOLTYPE cupr.val1 4

data remove storage cupr:volatile ToolID
data remove storage cupr:volatile ToolID2
scoreboard players reset #TMP cupr.val1