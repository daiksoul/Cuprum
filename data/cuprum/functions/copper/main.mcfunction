execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_axe=1..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] at @s run function cuprum:copper/used_mainhand
execute as @a[predicate=cuprum:copper_check/offhand,scores={cupr.use_axe=1..},nbt={Inventory:[{id:"minecraft:iron_axe",Slot:-106b}]}] at @s run function cuprum:copper/used_offhand
execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_hoe=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run function cuprum:copper/used_mainhand
execute as @a[predicate=cuprum:copper_check/offhand,scores={cupr.use_hoe=1..},nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:-106b}]}] at @s run function cuprum:copper/used_offhand
execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_pic=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s run function cuprum:copper/used_mainhand
execute as @a[predicate=cuprum:copper_check/offhand,scores={cupr.use_pic=1..},nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:-106b}]}] at @s run function cuprum:copper/used_offhand
execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_sho=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] at @s run function cuprum:copper/used_mainhand
execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_sho=1..},nbt={Inventory:[{id:"minecraft:iron_shovel",Slot:-106b}]}] at @s run function cuprum:copper/used_offhand
execute as @a[predicate=cuprum:copper_check/offhand,scores={cupr.use_swo=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] at @s run function cuprum:copper/used_mainhand
execute as @a[predicate=cuprum:copper_check/mainhand,scores={cupr.use_swo=1..},nbt={Inventory:[{id:"minecraft:iron_sword",Slot:-106b}]}] at @s run function cuprum:copper/used_offhand

execute as @a[predicate=cuprum:copper_check/charged/mainhand,scores={cupr.use_axe=1..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] at @s run function cuprum:lightning/axe/hit
execute as @a[predicate=cuprum:copper_check/charged/mainhand,scores={cupr.use_hoe=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] at @s run function cuprum:lightning/hoe
execute as @a[predicate=cuprum:copper_check/charged/mainhand,scores={cupr.use_pic=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] at @s run function cuprum:lightning/pickaxe
execute as @a[predicate=cuprum:copper_check/charged/mainhand,scores={cupr.use_sho=1..},nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] at @s run function cuprum:lightning/shovel
execute as @a[predicate=cuprum:copper_check/charged/mainhand,scores={cupr.use_swo=1..},nbt={SelectedItem:{id:"minecraft:iron_sword"}}] at @s run function cuprum:lightning/sword/hit

execute as @a[predicate=cuprum:copper_check/charged/offhand,scores={cupr.use_axe=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_axe"}]}] at @s run function cuprum:lightning/axe/hit
execute as @a[predicate=cuprum:copper_check/charged/offhand,scores={cupr.use_hoe=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_hoe"}]}] at @s run function cuprum:lightning/hoe
execute as @a[predicate=cuprum:copper_check/charged/offhand,scores={cupr.use_pic=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_pickaxe"}]}] at @s run function cuprum:lightning/pickaxe
execute as @a[predicate=cuprum:copper_check/charged/offhand,scores={cupr.use_sho=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_shovel"}]}] at @s run function cuprum:lightning/shovel
execute as @a[predicate=cuprum:copper_check/charged/offhand,scores={cupr.use_swo=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] at @s run function cuprum:lightning/sword/hit

execute as @a[scores={cupr.hit=1..},predicate=cuprum:copper_check/charged/head] at @s unless entity @e[type=lightning_bolt,distance=..2] positioned ~ ~0.6 ~ run function cuprum:lightning/armor/hit_head
execute as @a[scores={cupr.hit=1..},predicate=cuprum:copper_check/charged/chest] at @s unless entity @e[type=lightning_bolt,distance=..2] positioned ~ ~ ~ run function cuprum:lightning/armor/hit_chest
execute as @a[scores={cupr.hit=1..},predicate=cuprum:copper_check/charged/legs] at @s unless entity @e[type=lightning_bolt,distance=..2] positioned ~ ~0.5 ~ run function cuprum:lightning/armor/hit_legs
execute as @a[scores={cupr.hit=1..},predicate=cuprum:copper_check/charged/feet] at @s unless entity @e[type=lightning_bolt,distance=..2] positioned ~ ~-0.8 ~ run function cuprum:lightning/armor/hit_feet

scoreboard players set @a[scores={cupr.use_axe=1..}] cupr.use_axe 0
scoreboard players set @a[scores={cupr.use_hoe=1..}] cupr.use_hoe 0
scoreboard players set @a[scores={cupr.use_pic=1..}] cupr.use_pic 0
scoreboard players set @a[scores={cupr.use_sho=1..}] cupr.use_sho 0
scoreboard players set @a[scores={cupr.use_swo=1..}] cupr.use_swo 0
scoreboard players set @a[scores={cupr.hit=1..}] cupr.hit 0

execute if entity @e[tag=cupr.bolt_armor] run function cuprum:lightning/armor/loop
execute if entity @e[tag=cupr.bolt_sword] run function cuprum:lightning/sword/loop
execute if entity @e[tag=cupr.bolt_axe] run function cuprum:lightning/axe/loop

execute as @e[type=lightning_bolt] at @s as @e[scores={cupr.copper_cnt=1..},distance=..2] at @s run function cuprum:copper/charge
execute as @e[type=lightning_bolt] at @s as @e[predicate=cuprum:copper_check/head,predicate=cuprum:copper_check/chest,predicate=cuprum:copper_check/legs,predicate=cuprum:copper_check/feet,distance=..2] at @s run effect give @p minecraft:resistance 1 4 true

function cuprum:lightning/armor/loop