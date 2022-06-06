execute store result score @s cupr.val2 run data get entity @s UUID[0] 1
scoreboard players operation @s cupr.val2 %= #LIGHTNING_OFFSET2 cupr.const
scoreboard players operation @s cupr.val2 -= #LIGHTNING_OFFMDL2 cupr.const
execute store result score @s cupr.val1 run data get entity @s Pos[0] 1000
scoreboard players operation @s cupr.val1 += @s cupr.val2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s cupr.val1

execute store result score @s cupr.val2 run data get entity @s UUID[1] 1
scoreboard players operation @s cupr.val2 %= #LIGHTNING_OFFSET2 cupr.const
scoreboard players operation @s cupr.val2 -= #LIGHTNING_OFFMDL2 cupr.const
execute store result score @s cupr.val1 run data get entity @s Pos[1] 1000
scoreboard players operation @s cupr.val1 += @s cupr.val2
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s cupr.val1

execute store result score @s cupr.val2 run data get entity @s UUID[2] 1
scoreboard players operation @s cupr.val2 %= #LIGHTNING_OFFSET2 cupr.const
scoreboard players operation @s cupr.val2 -= #LIGHTNING_OFFMDL2 cupr.const
execute store result score @s cupr.val1 run data get entity @s Pos[2] 1000
scoreboard players operation @s cupr.val1 += @s cupr.val2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s cupr.val1

scoreboard players set @s cupr.val1 0
scoreboard players set @s cupr.val2 0