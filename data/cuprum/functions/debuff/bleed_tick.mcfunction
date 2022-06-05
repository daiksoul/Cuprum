scoreboard players operation #BLEED cupr.val1 = @s cupr.bleed_timer
scoreboard players operation #BLEED cupr.val1 %= #BLEED_DELAY cupr.const
scoreboard players remove @s[scores={cupr.bleed_timer=1..}] cupr.bleed_timer 1
execute if score #BLEED cupr.val1 matches 0 run function cuprum:debuff/bleed_damage
scoreboard players reset #BLEED cupr.val1