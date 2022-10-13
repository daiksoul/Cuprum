function cuprum:lightning/armor/summon_marker

execute if data entity @s Inventory[{Slot:100b}].tag.cuprum{charged:1b} run item modify entity @s armor.feet cuprum:copper/charge/discharge_armor