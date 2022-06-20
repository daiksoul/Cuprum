execute store result score #TIME_MARK cupr.val2 run data get storage cupr:global TimeStamp 1
scoreboard players operation #TIME_MARK cupr.val2 -= #TIME_MARK cupr.val1
scoreboard players operation #TIME_MARK cupr.val2 /= #DECAY_VAL cupr.const
scoreboard players operation #TIME_MARK cupr.val1 += #TIME_MARK cupr.val2
execute store result storage cupr:volatile TmpMark long 1 run scoreboard players get #TIME_MARK cupr.val1
scoreboard players reset #TIME_MARK cupr.val1
scoreboard players reset #TIME_MARK cupr.val2