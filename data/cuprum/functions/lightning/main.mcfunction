execute as @a[scores={cupr.use_axe=1..},nbt={SelectedItem:{tag:{cuprum:{copper:1b}}}}] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/axe/hit
execute as @a[scores={cupr.use_hoe=1..},nbt={SelectedItem:{tag:{cuprum:{copper:1b}}}}] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/hoe
execute as @a[scores={cupr.use_pic=1..},nbt={SelectedItem:{tag:{cuprum:{copper:1b}}}}] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/pickaxe
execute as @a[scores={cupr.use_sho=1..},nbt={SelectedItem:{tag:{cuprum:{copper:1b}}}}] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/shovel
execute as @a[scores={cupr.use_swo=1..},nbt={SelectedItem:{tag:{cuprum:{copper:1b}}}}] at @s if data entity @s SelectedItem.tag.cuprum{charged:1b} run function cuprum:lightning/sword/hit

execute as @a[scores={cupr.use_axe=1..},nbt={SelectedItem:{tag:{cuprum:{}}}}] at @s if data entity @s SelectedItem.tag.cuprum{waxed:0b} run function cuprum:copper/used_mainhand
execute as @a[scores={cupr.use_axe=1..},nbt={Inventory:[{Slot:-106b,tag:{cuprum:{}}}]}] at @s if data entity @s Inventory[{Slot:-106b}].tag.cuprum{waxed:0b} run function cuprum:copper/used_offhand
execute as @a[scores={cupr.use_hoe=1..},nbt={SelectedItem:{tag:{cuprum:{}}}}] at @s if data entity @s SelectedItem.tag.cuprum{waxed:0b} run function cuprum:copper/used_mainhand
execute as @a[scores={cupr.use_hoe=1..},nbt={Inventory:[{Slot:-106b,tag:{cuprum:{}}}]}] at @s if data entity @s Inventory[{Slot:-106b}].tag.cuprum{waxed:0b} run function cuprum:copper/used_offhand
execute as @a[scores={cupr.use_pic=1..},nbt={SelectedItem:{tag:{cuprum:{}}}}] at @s if data entity @s SelectedItem.tag.cuprum{waxed:0b} run function cuprum:copper/used_mainhand
execute as @a[scores={cupr.use_pic=1..},nbt={Inventory:[{Slot:-106b,tag:{cuprum:{}}}]}] at @s if data entity @s Inventory[{Slot:-106b}].tag.cuprum{waxed:0b} run function cuprum:copper/used_offhand
execute as @a[scores={cupr.use_sho=1..},nbt={SelectedItem:{tag:{cuprum:{}}}}] at @s if data entity @s SelectedItem.tag.cuprum{waxed:0b} run function cuprum:copper/used_mainhand
execute as @a[scores={cupr.use_sho=1..},nbt={Inventory:[{Slot:-106b,tag:{cuprum:{}}}]}] at @s if data entity @s Inventory[{Slot:-106b}].tag.cuprum{waxed:0b} run function cuprum:copper/used_offhand
execute as @a[scores={cupr.use_swo=1..},nbt={SelectedItem:{tag:{cuprum:{}}}}] at @s if data entity @s SelectedItem.tag.cuprum{waxed:0b} run function cuprum:copper/used_mainhand
execute as @a[scores={cupr.use_swo=1..},nbt={Inventory:[{Slot:-106b,tag:{cuprum:{}}}]}] at @s if data entity @s Inventory[{Slot:-106b}].tag.cuprum{waxed:0b} run function cuprum:copper/used_offhand

execute as @a[scores={cupr.copper_equ=4..,cupr.hit=1..}] at @s if data entity @s Inventory[{Slot:101b}].tag.cuprum{charged:1b} run function cuprum:lightning/armor/hit
execute as @a[scores={cupr.copper_equ=4..,cupr.hit=1..}] at @s if data entity @s Inventory[{Slot:102b}].tag.cuprum{charged:1b} run function cuprum:lightning/armor/hit
execute as @a[scores={cupr.copper_equ=4..,cupr.hit=1..}] at @s if data entity @s Inventory[{Slot:103b}].tag.cuprum{charged:1b} run function cuprum:lightning/armor/hit
execute as @a[scores={cupr.copper_equ=4..,cupr.hit=1..}] at @s if data entity @s Inventory[{Slot:104b}].tag.cuprum{charged:1b} run function cuprum:lightning/armor/hit

scoreboard players set @a[scores={cupr.use_axe=1..}] cupr.use_axe 0
scoreboard players set @a[scores={cupr.use_hoe=1..}] cupr.use_hoe 0
scoreboard players set @a[scores={cupr.use_pic=1..}] cupr.use_pic 0
scoreboard players set @a[scores={cupr.use_sho=1..}] cupr.use_sho 0
scoreboard players set @a[scores={cupr.use_swo=1..}] cupr.use_swo 0
scoreboard players set @a[scores={cupr.hit=1..}] cupr.hit 0

execute if entity @e[tag=cupr.bolt_sword] run function cuprum:lightning/sword/loop
execute if entity @e[tag=cupr.bolt_axe] run function cuprum:lightning/axe/loop

function cuprum:lightning/armor/loop