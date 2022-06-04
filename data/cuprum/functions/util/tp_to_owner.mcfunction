execute as @e[distance=..5,sort=nearest,limit=1,tag=!cupr.checked_id] run tag @s add cupr.checking_id
execute as @e[tag=cupr.checking_id,limit=1] run data modify storage cupr:volatile Target set from entity @s UUID
data modify storage cupr:volatile Source set from entity @s data.OwnerId
function cuprum:util/compare_nbt

#success
execute if data storage cupr:volatile {Different:0} run tp @s @e[tag=cupr.checking_id,limit=1]
execute if data storage cupr:volatile {Different:0} run tag @e[tag=cupr.checked_id] remove checked_id
execute if data storage cupr:volatile {Different:0} run tag @e[tag=cupr.checking_id] remove checking_id

#fail
execute if data storage cupr:volatile {Different:1} run tag @e[tag=cupr.checking_id] add cupr.checked_id
execute if data storage cupr:volatile {Different:1} run tag @e[tag=cupr.checking_id] remove cupr.checking_id
execute unless entity @a[distance=..5,tag=!cupr.checked_id] run tag @e[tag=cupr.checked_id] remove checked_id

#loop
execute if data storage cupr:volatile {Different:1} if entity @e[distance=..5,tag=!cupr.checked_id] run function cuprum:util/tp_to_owner

data remove storage cupr:volatile Different