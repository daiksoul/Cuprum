execute store result score #RUSTLVL cupr.val1 run data get entity @s SelectedItem.tag.cuprum.copper 1
execute if data entity @s SelectedItem{id:"minecraft:iron_axe"} run item modify entity @s weapon.mainhand cuprum:copper/rust/axe
execute if data entity @s SelectedItem{id:"minecraft:iron_hoe"} run item modify entity @s weapon.mainhand cuprum:copper/rust/hoe
execute if data entity @s SelectedItem{id:"minecraft:iron_pickaxe"} run item modify entity @s weapon.mainhand cuprum:copper/rust/pickaxe
execute if data entity @s SelectedItem{id:"minecraft:iron_shovel"} run item modify entity @s weapon.mainhand cuprum:copper/rust/shovel
execute if data entity @s SelectedItem{id:"minecraft:iron_sword"} run item modify entity @s weapon.mainhand cuprum:copper/rust/sword
item modify entity @s weapon.mainhand cuprum:copper/rust
scoreboard players reset #RUSTLVL