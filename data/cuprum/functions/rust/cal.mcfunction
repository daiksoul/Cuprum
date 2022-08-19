execute store result score #RUST_COPPER cupr.val1 run data get storage cupr:volatile RustItem.tag.cuprum.copper 1
execute store result score #RUST_USETIME cupr.val1 run data get storage cupr:volatile RustItem.tag.cuprum.last_use 1
#execute store result score #RUST_DURABIL cupr.val1 run data get storage cupr:volatile RustItem.tag.cdur.current_d 1

execute if score #RUST_USETIME cupr.val1 matches ..-1 run scoreboard players operation #RUST_USETIME cupr.val1 = #CUPR_TIME cupr.const

scoreboard players operation #RUST_USETIME cupr.val1 -= #CUPR_TIME cupr.const
scoreboard players operation #RUST_USETIME cupr.val1 *= #MATH_(-1) cupr.const
scoreboard players operation #RUST_USETIME cupr.val1 /= #RUST_TIME_COEF cupr.const
scoreboard players operation #RUST_COPPER cupr.val1 -= #MATH_(4) cupr.const
scoreboard players operation #RUST_COPPER cupr.val1 *= #MATH_(-1) cupr.const
#scoreboard players operation #RUST_DURABIL cupr.val1 *= #RUST_DAMG_COEF cupr.const

scoreboard players set #RUST_RNG_VAL cupr.val1 0
scoreboard players operation #RUST_RNG_VAL cupr.val1 += #RUST_COPPER cupr.val1
scoreboard players operation #RUST_RNG_VAL cupr.val1 *= #RUST_USETIME cupr.val1
#scoreboard players operation #RUST_RNG_VAL cupr.val1 += #RUST_DURABIL cupr.val1

summon marker ~ ~ ~ {Tags:["cupr.rng"]}

execute store result score #RUST_RNG_RES cupr.val1 run data get entity @e[tag=cupr.rng,limit=1] UUID[0] 1
scoreboard players operation #RUST_RNG_RES cupr.val1 %= #RUST_RNG_CEIL cupr.const
kill @e[tag=cupr.rng]

scoreboard players reset #RUST_COPPER
scoreboard players reset #RUST_USETIME
#scoreboard players reset #RUST_DURABIL

execute if score #RUST_RNG_VAL cupr.val1 >= #RUST_RNG_RES cupr.val1 run data modify storage cupr:volatile RustResult set value 1

#tellraw @a [{"score":{"name": "#RUST_RNG_VAL","objective": "cupr.val1"}},":",{"score":{"name": "#RUST_RNG_RES","objective": "cupr.val1"}}]

scoreboard players reset #RUST_RNG_VAL
scoreboard players reset #RUST_RNG_RES

