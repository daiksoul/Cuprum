effect give @s[predicate=cuprum:copper_check/head,predicate=cuprum:copper_check/chest,predicate=cuprum:copper_check/legs,predicate=cuprum:copper_check/feet] resistance 1 5 true
summon lightning_bolt ~ ~1 ~
execute if block ~ ~ ~ fire run setblock ~ ~ ~ air
particle electric_spark ~ ~1 ~ 0.2 0.5 0.2 0.01 20 normal
function cuprum:copper/charge
tag @s remove cupr.thunder.o