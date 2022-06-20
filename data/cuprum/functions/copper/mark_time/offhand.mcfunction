execute unless data entity @s Inventory[{Slot:-106b}].tag.cuprum{last_use:-1L} store result score #TIME_MARK cupr.val1 run data get entity @s SelectedItem.tag.cuprum.last_use
execute if data entity @s Inventory[{Slot:-106b}].tag.cuprum{last_use:-1L} store result score #TIME_MARK cupr.val1 run data get storage cupr:global TimeStamp
function cuprum:copper/mark_time/cal
item modify entity @s weapon.offhand cuprum:copper/rust/mark_time
data remove storage cupr:volatile TmpMark