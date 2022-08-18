scoreboard objectives remove cupr.val1
scoreboard objectives remove cupr.val2
scoreboard objectives remove cupr.copper_cnt
scoreboard objectives remove cupr.const
scoreboard objectives remove cupr.thund_coold
scoreboard objectives remove cupr.bleed_timer
scoreboard objectives remove cupr.elect_timer
scoreboard objectives remove cupr.use_axe
scoreboard objectives remove cupr.use_hoe
scoreboard objectives remove cupr.use_pic
scoreboard objectives remove cupr.use_sho
scoreboard objectives remove cupr.use_swo
scoreboard objectives remove cupr.hit
scoreboard objectives remove cupr.hit_cal1
scoreboard objectives remove cupr.hit_cal2
scoreboard objectives remove cupr.hit_cal3
scoreboard objectives remove cupr.del
scoreboard objectives remove cupr.uuid0
scoreboard objectives remove cupr.uuid1
scoreboard objectives remove cupr.uuid2
scoreboard objectives remove cupr.uuid3
scoreboard objectives remove cupr.jointime
scoreboard objectives remove cupr.head_stat
scoreboard objectives remove cupr.chst_stat
scoreboard objectives remove cupr.legs_stat
scoreboard objectives remove cupr.feet_stat
scoreboard objectives remove cupr.maih_stat
scoreboard objectives remove cupr.offh_stat

scoreboard objectives add cupr.uuid0 dummy
scoreboard objectives add cupr.uuid1 dummy
scoreboard objectives add cupr.uuid2 dummy
scoreboard objectives add cupr.uuid3 dummy
scoreboard objectives add cupr.val1 dummy
scoreboard objectives add cupr.val2 dummy
scoreboard objectives add cupr.copper_cnt dummy
scoreboard objectives add cupr.const dummy
scoreboard objectives add cupr.thund_coold dummy
scoreboard objectives add cupr.bleed_timer dummy
scoreboard objectives add cupr.elect_timer dummy
scoreboard objectives add cupr.use_axe minecraft.used:iron_axe
scoreboard objectives add cupr.use_hoe minecraft.used:iron_hoe
scoreboard objectives add cupr.use_pic minecraft.used:iron_pickaxe
scoreboard objectives add cupr.use_sho minecraft.used:iron_shovel
scoreboard objectives add cupr.use_swo minecraft.used:iron_sword
scoreboard objectives add cupr.hit dummy
scoreboard objectives add cupr.hit_cal1 minecraft.custom:damage_taken
scoreboard objectives add cupr.hit_cal2 minecraft.custom:damage_absorbed
scoreboard objectives add cupr.hit_cal3 minecraft.custom:damage_resisted
scoreboard objectives add cupr.del minecraft.custom:damage_dealt
scoreboard objectives add cupr.jointime minecraft.custom:play_time
scoreboard objectives add cupr.head_stat dummy
scoreboard objectives add cupr.chst_stat dummy
scoreboard objectives add cupr.legs_stat dummy
scoreboard objectives add cupr.feet_stat dummy
scoreboard objectives add cupr.maih_stat dummy
scoreboard objectives add cupr.offh_stat dummy

data merge storage cupr:volatile {}
data merge storage cupr:global {}

scoreboard players set @a cupr.head_stat -1
scoreboard players set @a cupr.chst_stat -1
scoreboard players set @a cupr.legs_stat -1
scoreboard players set @a cupr.feet_stat -1
scoreboard players set @a cupr.maih_stat -1
scoreboard players set @a cupr.offh_stat -1

scoreboard players set #COPPER_AXE_1_ASP cupr.const 100
scoreboard players set #COPPER_AXE_2_ASP cupr.const 95
scoreboard players set #COPPER_AXE_3_ASP cupr.const 90
scoreboard players set #COPPER_AXE_4_ASP cupr.const 85

scoreboard players set #COPPER_HOE_1_ASP cupr.const 350
scoreboard players set #COPPER_HOE_2_ASP cupr.const 325
scoreboard players set #COPPER_HOE_3_ASP cupr.const 300
scoreboard players set #COPPER_HOE_4_ASP cupr.const 275

scoreboard players set #COPPER_PIC_1_ASP cupr.const 120
scoreboard players set #COPPER_PIC_2_ASP cupr.const 110
scoreboard players set #COPPER_PIC_3_ASP cupr.const 100
scoreboard players set #COPPER_PIC_4_ASP cupr.const 90

scoreboard players set #COPPER_SHO_1_ASP cupr.const 120
scoreboard players set #COPPER_SHO_2_ASP cupr.const 110
scoreboard players set #COPPER_SHO_3_ASP cupr.const 100
scoreboard players set #COPPER_SHO_4_ASP cupr.const 90

scoreboard players set #COPPER_SWO_1_ASP cupr.const 180
scoreboard players set #COPPER_SWO_2_ASP cupr.const 170
scoreboard players set #COPPER_SWO_3_ASP cupr.const 155
scoreboard players set #COPPER_SWO_4_ASP cupr.const 140

scoreboard players set #COPPER_AXE_ATD cupr.const 850
scoreboard players set #COPPER_HOE_ATD cupr.const 100
scoreboard players set #COPPER_PIC_ATD cupr.const 350
scoreboard players set #COPPER_SHO_ATD cupr.const 400
scoreboard players set #COPPER_SWO_ATD cupr.const 550

scoreboard players set #LIGHTNING_FORKS cupr.const 3
scoreboard players set #LIGHTNING_FORKSBASE cupr.const 2
scoreboard players set #LIGHTNING_LEVELS cupr.const 5
scoreboard players set #LIGHTNING_LEVELSBASE cupr.const 5

scoreboard players set #LIGHTNING_OFFSET cupr.const 1500
scoreboard players set #LIGHTNING_OFFMDL cupr.const 750
scoreboard players set #LIGHTNING_OFFSET1 cupr.const 2000
scoreboard players set #LIGHTNING_OFFMDL1 cupr.const 1000
scoreboard players set #LIGHTNING_OFFSET2 cupr.const 750
scoreboard players set #LIGHTNING_OFFMDL2 cupr.const 375
scoreboard players set #ELECTRIC_OFFSET cupr.const 750
scoreboard players set #ELECTRIC_OFFMDL cupr.const 375

scoreboard players set #BLEED_DELAY cupr.const 20
scoreboard players set #ELECT_DELAY cupr.const 4

scoreboard players set #RUST_RNG_CEIL cupr.const 10000
scoreboard players set #RUST_TIME_COEF cupr.const 4
scoreboard players set #RUST_DAMG_COEF cupr.const 1
scoreboard players set #RUST_LEVL_COEF cupr.const 2
scoreboard players set #DECAY_VAL cupr.const 2

scoreboard players set #MATH_(-1) cupr.const -1

kill @e[tag=cupr.bolt_fork]