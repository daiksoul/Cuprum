execute store result score #RUSTLVL cupr.val1 run data get entity @s Inventory[{Slot:-106b}].tag.cuprum.copper 1
summon armor_stand ~ ~ ~ {Tags:["cupr.rust"],Invulnerable:1,Invisible:1,DisabledSlots:4144959}
item replace entity @e[tag=cupr.rust,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.offhand
execute unless data entity @s Inventory[{Slot:-106b}].tag.cuprum{copper:4b} run data remove entity @e[tag=cupr.rust,sort=nearest,limit=1] HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}]
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_axe"}] run item modify entity @s weapon.mainhand cuprum:copper/rust/axe
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_hoe"}] run item modify entity @s weapon.mainhand cuprum:copper/rust/hoe
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_pickaxe"}] run item modify entity @s weapon.mainhand cuprum:copper/rust/pickaxe
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_shovel"}] run item modify entity @s weapon.mainhand cuprum:copper/rust/shovel
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword"}] run item modify entity @s weapon.mainhand cuprum:copper/rust/sword
item modify entity @e[tag=cupr.rust,sort=nearest,limit=1] weapon.mainhand cuprum:copper/rust
item replace entity @s weapon.offhand from entity @e[tag=cupr.rust,sort=nearest,limit=1] weapon.mainhand
scoreboard players reset #RUSTLVL
kill @e[tag=cupr.rust,sort=nearest,limit=1]