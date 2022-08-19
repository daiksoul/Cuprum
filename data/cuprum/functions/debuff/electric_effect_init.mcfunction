summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute as @e[tag=cupr.electric_effect,tag=!cupr.marked] at @s run function cuprum:debuff/electric_effect_offset
tag @e[tag=cupr.electric_effect,tag=!cupr.marked] add cupr.marked