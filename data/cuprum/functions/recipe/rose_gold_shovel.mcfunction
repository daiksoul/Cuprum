advancement revoke @s only cuprum:recipes/rose_gold_shovel
recipe take @s cuprum:rose_gold_shovel
summon armor_stand ~ ~ ~ {Tags:["cuprum.rose_gold_shovel"],Invulnerable:1,Invisible:1,DisabledSlots:4144959}
data modify entity @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest] HandItems[0] set from entity @s Inventory[{id:"minecraft:knowledge_book"}]
data modify entity @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest] HandItems[0].id set value "minecraft:golden_shovel"
item modify entity @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest] weapon.mainhand cuprum:rose_gold
execute unless data entity @e[tag=cuprm.rose_gold_axe,limit=1,sort=nearest] HandItems[0].tag.display.Name run item modify entity @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest] weapon.mainhand cuprum:rose_gold/shovel

summon item ~ ~ ~ {PickupDelay:0,Item:{id:"stone",Count:1b},Tags:["cuprum.rose_gold_shovel_item"]}
data modify entity @e[tag=cuprum.rose_gold_shovel_item,limit=1,sort=nearest] Item set from entity @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest] HandItems[0]

clear @s knowledge_book
kill @e[tag=cuprum.rose_gold_shovel,limit=1,sort=nearest]