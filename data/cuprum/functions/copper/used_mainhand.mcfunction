data modify storage cupr:volatile RustItem set from entity @s SelectedItem
function cuprum:rust/cal
execute if data storage cupr:volatile {RustResult:1} run function cuprum:rust/mainhand
data remove storage cupr:volatile RustResult
item modify entity @s weapon.mainhand cuprum:copper/rust/mark_time