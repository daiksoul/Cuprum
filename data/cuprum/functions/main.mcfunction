execute as @a run function cuprum:util/damage_cal

execute as @e at @s if data entity @s Inventory[].tag.cuprum.copper run function cuprum:copper/test_copper

execute store result score #CUPR_TIME cupr.const run time query gametime
execute store result storage cupr:global TimeStamp long 1 run time query gametime

function cuprum:copper/lightning_loop
function cuprum:recipe/rose_gold
function cuprum:copper/main
function cuprum:debuff/main

execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}] run data modify entity @s PickupDelay set value 0

execute if entity @e[scores={cupr.jointime=..1}] as @e[scores={cupr.jointime=..1}] run function cuprum:uuid