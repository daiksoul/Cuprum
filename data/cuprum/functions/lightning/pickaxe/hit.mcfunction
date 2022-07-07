summon marker ~ ~ ~ {Tags:["cupr.bolt_pickaxe","cupr.bolt_guide"]}
tp @e[tag=cupr.bolt_pickaxe,tag=cupr.bolt_guide,tag=!cupr.marked] ^ ^ ^1
data modify entity @e[tag=cupr.bolt_pickaxe,tag=cupr.bolt_guide,tag=!cupr.marked,sort=nearest,limit=1] Rotation set from entity @s Rotation
