execute as @e at @s if data entity @s Inventory[].tag.cuprum.copper run function cuprum:copper/test_copper

function cuprum:copper/lightning_loop
function cuprum:recipe/rose_gold

execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}] run data modify entity @s PickupDelay set value 0