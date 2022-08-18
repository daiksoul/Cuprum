#state value == 2 one tick since equipping
#state value == 1 just equiped
#state value == 0 just unequiped
#state value == -1 one tick since unequipping

#Head state
scoreboard players set @a[scores={cupr.head_stat=-1},predicate=cuprum:copper_check/head] cupr.head_stat 1
scoreboard players add @a[scores={cupr.head_stat=1}] cupr.head_stat 1
scoreboard players set @a[scores={cupr.head_stat=2},predicate=!cuprum:copper_check/head] cupr.head_stat 0
scoreboard players remove @a[scores={cupr.head_stat=0}] cupr.head_stat 1

#Chest state
scoreboard players set @a[scores={cupr.chst_stat=-1},predicate=cuprum:copper_check/chest] cupr.chst_stat 1
scoreboard players add @a[scores={cupr.chst_stat=1}] cupr.chst_stat 1
scoreboard players set @a[scores={cupr.chst_stat=2},predicate=!cuprum:copper_check/chest] cupr.chst_stat 0
scoreboard players remove @a[scores={cupr.chst_stat=0}] cupr.chst_stat 1

#Legs state
scoreboard players set @a[scores={cupr.legs_stat=-1},predicate=cuprum:copper_check/legs] cupr.legs_stat 1
scoreboard players add @a[scores={cupr.legs_stat=1}] cupr.legs_stat 1
scoreboard players set @a[scores={cupr.legs_stat=2},predicate=!cuprum:copper_check/legs] cupr.legs_stat 0
scoreboard players remove @a[scores={cupr.legs_stat=0}] cupr.legs_stat 1

#Feet state
scoreboard players set @a[scores={cupr.feet_stat=-1},predicate=cuprum:copper_check/feet] cupr.feet_stat 1
scoreboard players add @a[scores={cupr.feet_stat=1}] cupr.feet_stat 1
scoreboard players set @a[scores={cupr.feet_stat=2},predicate=!cuprum:copper_check/feet] cupr.feet_stat 0
scoreboard players remove @a[scores={cupr.feet_stat=0}] cupr.feet_stat 1

#Mainhand state
scoreboard players set @a[scores={cupr.maih_stat=-1},predicate=cuprum:copper_check/mainhand] cupr.maih_stat 1
scoreboard players add @a[scores={cupr.maih_stat=1}] cupr.maih_stat 1
scoreboard players set @a[scores={cupr.maih_stat=2},predicate=!cuprum:copper_check/mainhand] cupr.maih_stat 0
scoreboard players remove @a[scores={cupr.maih_stat=0}] cupr.maih_stat 1

#Offhand state
scoreboard players set @a[scores={cupr.offh_stat=-1},predicate=cuprum:copper_check/offhand] cupr.offh_stat 1
scoreboard players add @a[scores={cupr.offh_stat=1}] cupr.offh_stat 1
scoreboard players set @a[scores={cupr.offh_stat=2},predicate=!cuprum:copper_check/offhand] cupr.offh_stat 0
scoreboard players remove @a[scores={cupr.offh_stat=0}] cupr.offh_stat 1