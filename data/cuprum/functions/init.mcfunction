scoreboard objectives remove cupr.val1
scoreboard objectives remove cupr.copper_equ
scoreboard objectives remove cupr.const
scoreboard objectives remove cupr.thund_coold

scoreboard objectives add cupr.val1 dummy
scoreboard objectives add cupr.copper_equ dummy
scoreboard objectives add cupr.const dummy
scoreboard objectives add cupr.thund_coold dummy

data merge storage cupr:volatile {}

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