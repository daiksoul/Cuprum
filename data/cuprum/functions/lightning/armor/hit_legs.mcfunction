function cuprum:lightning/armor/summon_marker

execute if data entity @s Inventory[{Slot:101b}].tag.cuprum{charged:1b} run item modify entity @s armor.legs cuprum:copper/charge/discharge_armor