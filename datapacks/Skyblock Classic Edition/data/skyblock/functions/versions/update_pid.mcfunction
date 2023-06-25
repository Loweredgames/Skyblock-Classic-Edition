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


#PID_1 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE IL COMMENTO IN SE)
##execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @a 71 59 -489 0 0
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
execute in minecraft:the_nether as @a[scores={PID_1=240}] run tp @a 5.72 58.00 33.68 -2853.45 49.95
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 5 58 34 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Count:1b,Slot:2b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Count:1b,Slot:5b,id:"minecraft:chain"},{Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:8b,id:"minecraft:snout_armor_trim_smithing_template"},{Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:10b,id:"minecraft:rib_armor_trim_smithing_template"},{Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Count:1b,Slot:16b,id:"minecraft:chain"},{Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Count:1b,Slot:18b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:22b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:24b,id:"minecraft:chain"},{Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} keep
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_1=500}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute as @a[scores={PID_1=100}] run 
execute as @a[scores={PID_1=100}] run 
execute as @a[scores={PID_1=100}] run 
execute as @a[scores={PID_1=100}] run 
execute as @a[scores={PID_1=100}] run 
execute as @a[scores={PID_1=100}] run 
execute in minecraft:overworld as @a[scores={PID_1=100}] run setblock 486 55 384 minecraft:fletching_table keep
execute as @a[scores={PID_1=1801}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_1=1801}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_1=..1800}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_1=1801}] run time set 0
#execute as @a[scores={PID_1=1801}] run gamemode survival @a
#execute in minecraft:overworld at @a[scores={PID_1=800}] run tp @a 0 66 0 90 0