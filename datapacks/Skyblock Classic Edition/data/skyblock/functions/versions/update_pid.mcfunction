#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##World Update and Conversion


##Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_1=1..5}] run gamemode spectator @a
execute as @a[scores={PID_1=5}] run time set 0
execute as @a[scores={PID_1=5}] run gamerule doImmediateRespawn true
##execute as @a[scores={PID_1=10..1}] run effect give @a blindness 11 0 true
##execute as @a[scores={PID_1=10..1}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_1=1800}] run gamerule doImmediateRespawn false
execute as @a[scores={PID_1=1803}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
###execute as @a[scores={PID_1=1..100}] run summon minecraft:area_effect_cloud ~ ~1 ~ (cambiare dopo aver fatto conversione)


#PID Legacy Remove (RIMUOVE LA SCORE DOPO LA CONVERSIONE)
execute as @a[scores={PID_1=3000..}] run scoreboard objectives remove PID_legacy


#PID_1 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE I COMMENTi IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @a 280 45 0 0 0
execute in minecraft:overworld as @a[scores={PID_1=100}] run setblock 295 50 2 minecraft:barrel[facing=south,open=false]{Items:[{Count:1b,Slot:13b,id:"minecraft:coast_armor_trim_smithing_template"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Here you will find treasures of all kinds but be careful not to fall...","italic":true}'],MapColor:6911,Name:'{"text":"The Flyship","bold":true}'}}}]} replace
execute in minecraft:overworld as @a[scores={PID_1=240}] run tp @a 722 50 709 0 0
execute in minecraft:overworld as @a[scores={PID_1=240}] run setblock 722 49 708 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:3b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:4b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:5b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:10b,id:"minecraft:shulker_shell"},{Count:1b,Slot:11b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:12b,id:"minecraft:eye_armor_trim_smithing_template"},{Count:1b,Slot:13b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:14b,id:"minecraft:spire_armor_trim_smithing_template"},{Count:1b,Slot:15b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:16b,id:"minecraft:shulker_shell"},{Count:1b,Slot:21b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:22b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:23b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:26b,id:"minecraft:written_book",tag:{author:"for you",generation:3,pages:['{"italic":true,"text":"10411611611211558474797114991041051181014611111410347100101116971051081154710811111511645109101109111114105101115955048494949494956"}'],resolved:1b,title:"Lost Memories"}}]} replace
execute in minecraft:overworld as @a[scores={PID_1=240}] run setblock 722 49 709 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"I\'m sorry but"}','{"text":"The End City"}','{"text":"is broken :("}','{"text":""}']},is_waxed:0b} replace
execute in minecraft:overworld as @a[scores={PID_1=100}] run #tp @a 508.79 46.00 71.38 -272.55 27.00
execute in minecraft:overworld as @a[scores={PID_1=100}] run setblock 507 46 71 minecraft:barrel[facing=east,open=false]{Items:[{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"You fi al y cce ded an he e ot  r it s th t c n hel   u...","italic":true}'],MapColor:0,Name:'{"text":"J urn Sky lok #02","bold":true}'}}},{Count:1b,Slot:13b,id:"minecraft:sentry_armor_trim_smithing_template"}]}
execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @s -694.51 47.06 -694.50 -3152.09 63.75
execute in minecraft:overworld as @a[scores={PID_1=100}] run /setblock -696 47 -695 minecraft:barrel[facing=east,open=false]{Items:[{Count:1b,Slot:1b,id:"minecraft:book"},{Count:1b,Slot:2b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:3b,id:"minecraft:echo_shard"},{Count:1b,Slot:4b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:5b,id:"minecraft:echo_shard"},{Count:1b,Slot:6b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:7b,id:"minecraft:book"},{Count:1b,Slot:8b,id:"minecraft:book"},{Count:1b,Slot:9b,id:"minecraft:book"},{Count:1b,Slot:10b,id:"minecraft:book"},{Count:1b,Slot:11b,id:"minecraft:fire_charge"},{Count:1b,Slot:12b,id:"minecraft:silence_armor_trim_smithing_template"},{Count:1b,Slot:13b,id:"minecraft:calibrated_sculk_sensor"},{Count:1b,Slot:14b,id:"minecraft:ward_armor_trim_smithing_template"},{Count:1b,Slot:15b,id:"minecraft:fire_charge"},{Count:1b,Slot:17b,id:"minecraft:book"},{Count:1b,Slot:18b,id:"minecraft:saddle"},{Count:1b,Slot:19b,id:"minecraft:fire_charge"},{Count:1b,Slot:22b,id:"minecraft:echo_shard"},{Count:1b,Slot:25b,id:"minecraft:fire_charge"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"This was my home but one day everything died...","italic":true}'],MapColor:4156559,Name:'{"text":"Deep Darkness","bold":true}'}}}]}
1execute in minecraft:overworld as @a[scores={PID_1=101..100}] run /kill @e[type=minecraft:warden]
execute in minecraft:overworld as @a[scores={PID_1=100}] run /execute in minecraft:overworld run tp @s -179.24 52.00 -176.39 -454.50 57.90
execute in minecraft:overworld as @a[scores={PID_1=100}] run /setblock -179 52 -177 minecraft:chest[facing=west,type=single,waterlogged=false]{Items:[{Count:1b,Slot:12b,id:"minecraft:allay_spawn_egg"},{Count:1b,Slot:13b,id:"minecraft:vex_armor_trim_smithing_template"},{Count:1b,Slot:14b,id:"minecraft:allay_spawn_egg"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Here is a witch and is a black cat. I hope it will keep you friendship...","italic":true}'],MapColor:39183,Name:'{"text":"Weting","bold":true}'}}}]}
execute in minecraft:overworld as @a[scores={PID_1=100}] run /tp -49.00 50.73 503.35 0 0 0
execute in minecraft:overworld as @a[scores={PID_1=100}] run /setblock -49 50 503 minecraft:barrel[facing=west,open=false]{Items:[{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Sorry for the traps but it\'s not easy to transport entire constructions. here is the reward...","italic":true}'],MapColor:1810688,Name:'{"text":"Jungle And Traps","bold":true}'}}},{Count:1b,Slot:13b,id:"minecraft:wild_armor_trim_smithing_template"}]}
execute in minecraft:overworld as @a[scores={PID_1=100}] run
execute in minecraft:overworld as @a[scores={PID_1=100}] run
execute in minecraft:overworld as @a[scores={PID_1=100}] run
execute in minecraft:overworld as @a[scores={PID_1=100}] run
execute in minecraft:overworld as @a[scores={PID_1=100}] run
execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @a 71 59 -489 0 0
execute in minecraft:overworld as @a[scores={PID_1=201}] run setblock 73 58 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=201}] run setblock 74 57 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=201}] run setblock 75 56 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=201}] run setblock 76 55 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=202}] run fill 80 54 -494 74 54 -488 minecraft:cut_sandstone keep
execute in minecraft:overworld as @a[scores={PID_1=205}] run fill 74 57 -494 80 57 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=205}] run fill 80 57 -493 80 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=205}] run fill 79 57 -488 74 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=205}] run fill 74 57 -489 74 57 -493 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=210}] run fill 80 56 -488 74 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=210}] run fill 74 56 -489 74 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=210}] run fill 75 56 -494 80 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=210}] run fill 80 56 -493 80 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=220}] run fill 80 55 -488 74 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=220}] run fill 74 55 -489 74 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=220}] run fill 75 55 -494 80 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=220}] run fill 80 55 -493 80 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=221}] run fill 77 55 -494 77 56 -494 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 80 55 -491 minecraft:smooth_sandstone_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 80 56 -491 minecraft:smooth_sandstone_stairs[facing=east,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 77 55 -488 minecraft:smooth_sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 77 56 -488 minecraft:smooth_sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 74 55 -491 minecraft:smooth_sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=225}] run setblock 74 56 -491 minecraft:smooth_sandstone_stairs[facing=west,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 75 54 -491 79 54 -491 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 77 54 -489 77 54 -493 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run setblock 77 54 -491 minecraft:gold_block destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 75 55 -493 79 55 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 79 56 -493 75 56 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 79 57 -493 75 58 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run setblock 75 58 -490 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 77 55 -495 77 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 76 56 -495 76 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 75 58 -495 74 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=230}] run fill 78 59 -495 77 59 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 78 55 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:archer_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 75 55 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 75 55 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 77 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:miner_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 79 56 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 75 56 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 76 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 76 56 -492 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 78 58 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:prize_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 78 59 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 77 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 78 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 75 57 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 73 59 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:diamond"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=235}] run setblock 78 60 -494 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=236}] run setblock 77 55 -491 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:1b,Slot:0b,id:"minecraft:string"},{Count:1b,Slot:1b,id:"minecraft:brewer_pottery_sherd"},{Count:1b,Slot:2b,id:"minecraft:feather"},{Count:1b,Slot:3b,id:"minecraft:string"},{Count:1b,Slot:5b,id:"minecraft:sand"},{Count:1b,Slot:6b,id:"minecraft:saddle"},{Count:3b,Slot:7b,id:"minecraft:bone"},{Count:1b,Slot:8b,id:"minecraft:sand"},{Count:1b,Slot:9b,id:"minecraft:rotten_flesh"},{Count:3b,Slot:10b,id:"minecraft:sand"},{Count:1b,Slot:11b,id:"minecraft:string"},{Count:1b,Slot:13b,id:"minecraft:dune_armor_trim_smithing_template"},{Count:2b,Slot:14b,id:"minecraft:sand"},{Count:1b,Slot:15b,id:"minecraft:skull_pottery_sherd"},{Count:1b,Slot:16b,id:"minecraft:bone"},{Count:1b,Slot:17b,id:"minecraft:string"},{Count:2b,Slot:18b,id:"minecraft:bone"},{Count:1b,Slot:19b,id:"minecraft:sand"},{Count:1b,Slot:20b,id:"minecraft:sand"},{Count:1b,Slot:21b,id:"minecraft:arms_up_pottery_sherd"},{Count:1b,Slot:22b,id:"minecraft:sand"},{Count:1b,Slot:23b,id:"minecraft:bone"},{Count:2b,Slot:24b,id:"minecraft:rotten_flesh"},{Count:2b,Slot:25b,id:"minecraft:string"}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=240}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}
execute in minecraft:overworld as @a[scores={PID_1=240}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}
execute in minecraft:overworld as @a[scores={PID_1=240}] run tp @a 486 55 384 0 0
execute in minecraft:overworld as @a[scores={PID_1=100}] run setblock 486 55 384 minecraft:fletching_table keep


##The Nether
execute in minecraft:the_nether as @a[scores={PID_1=240}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_1=240}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_1=490}] run setblock 5 58 34 minecraft:air replace
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 5 58 34 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Count:1b,Slot:2b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Count:1b,Slot:5b,id:"minecraft:chain"},{Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:8b,id:"minecraft:snout_armor_trim_smithing_template"},{Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:10b,id:"minecraft:rib_armor_trim_smithing_template"},{Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Count:1b,Slot:16b,id:"minecraft:chain"},{Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Count:1b,Slot:18b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:22b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:24b,id:"minecraft:chain"},{Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} keep
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute in minecraft:the_nether as @a[scores={PID_1=500}] run


##The End


##Final Function
execute as @a[scores={PID_1=1801}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_1=1801}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_1=..1800}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_1=1801}] run time set 0
#execute as @a[scores={PID_1=1801}] run gamemode survival @a
#execute in minecraft:overworld at @a[scores={PID_1=800}] run tp @a 0 66 0 90 0