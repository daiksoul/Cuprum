advancement revoke @s only cuprum:recipes/rose_gold_chestplate
recipe take @s cuprum:rose_gold_chestplate
summon armor_stand ~ ~ ~ {Tags:["cuprum.rose_gold_chestplate"],Invulnerable:1,Invisible:1,DisabledSlots:4144959}
data modify entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0] set from entity @s Inventory[{id:"minecraft:knowledge_book"}]
data modify entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0].id set value "minecraft:leather_chestplate"
execute unless data entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0].tag.cuprum run item modify entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] weapon.mainhand cuprum:rose_gold_armor
execute if data entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0].tag.cuprum run give @s copper_ingot
execute unless data entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0].tag.display.Name run item modify entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] weapon.mainhand cuprum:rose_gold/chestplate

summon item ~ ~ ~ {PickupDelay:0,Item:{id:"stone",Count:1b},Tags:["cuprum.rose_gold_chestplate_item"]}
data modify entity @e[tag=cuprum.rose_gold_chestplate_item,limit=1,sort=nearest] Item set from entity @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest] HandItems[0]

clear @s knowledge_book
kill @e[tag=cuprum.rose_gold_chestplate,limit=1,sort=nearest]