data modify storage cupr:volatile RustItem set from entity @s Inventory[{Slot:-106b}]
function cuprum:rust/cal
execute if data storage cupr:volatile {RustResult:1} run function cuprum:rust/mainhand
data remove storage cupr:volatile RustResult
function cuprum:copper/mark_time/offhand