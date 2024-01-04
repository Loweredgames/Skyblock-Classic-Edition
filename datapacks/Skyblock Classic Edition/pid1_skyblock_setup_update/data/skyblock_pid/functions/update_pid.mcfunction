#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)


##Scoreboard PID SETUP (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_1 dummy
scoreboard players add @a PID_1 1


##PID 1.20.3_1_1 - 1.20.3/1.20.4 Fix Elitrà (LASCIARE COSI. PER LA FUNZIONE PID 1_1, VERSIONE MINORE DA SPOSTARE IN LEGACY QUANDO IL PID DIVENTA INCOMPATIBILE)
scoreboard players add @a 1.20.3_PID_1_1 1
function skyblock_pid:mc1203_pid1_1


##PID END 1.20.3_1_1 (QUANDO FINISCE IL PID MADRE AGGIUNGERE IL PID MINORE. QUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEI PID MINORI)
execute as @a[scores={PID_1=1015..}] run scoreboard objectives add 1.20.3_PID_1_1 dummy


##PID 1.20.3_1_2 - 1.20.3/1.20.4 Aggiunto loot nei vasi decorativi (LASCIARE COSI. PER LA FUNZIONE PID 1_2, VERSIONE MINORE DA SPOSTARE IN LEGACY QUANDO IL PID DIVENTA INCOMPATIBILE)
scoreboard players add @a 1.20.3_PID_1_2 1
function skyblock_pid:mc1203_pid1_2


##PID END 1.20.3_1_2 (QUANDO FINISCE IL PID MADRE AGGIUNGERE IL PID MINORE. QUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEI PID MINORI)
execute as @a[scores={1.20.3_PID_1_1=315..}] run scoreboard objectives add 1.20.3_PID_1_2 dummy


##PID 1.20.3_1_3 - 1.20.3/1.20.4 Fix level.dat, reset valori - #251 (LASCIARE COSI. PER LA FUNZIONE PID 1_3, VERSIONE MINORE DA SPOSTARE IN LEGACY QUANDO IL PID DIVENTA INCOMPATIBILE)
scoreboard players add @a 1.20.3_PID_1_3 1
function skyblock_pid:mc1203_pid1_3


##PID END 1.20.3_1_3 (QUANDO FINISCE IL PID MADRE AGGIUNGERE IL PID MINORE. QUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEI PID MINORI)
execute as @a[scores={1.20.3_PID_1_2=325..}] run scoreboard objectives add 1.20.3_PID_1_3 dummy


##Scoreboard Start PID 1
execute as @a[scores={PID_1=5..100}] run gamemode spectator @a
execute as @a[scores={PID_1=5}] run time set 0
execute as @a[scores={PID_1=5}] run gamerule doImmediateRespawn true
execute as @a[scores={PID_1=5..1000}] run effect give @a blindness 5 0 true
execute as @a[scores={PID_1=5..1000}] run effect give @a night_vision 5 0 true
execute as @a[scores={PID_1=1000}] run gamerule doImmediateRespawn false
execute as @a[scores={PID_1=1005}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={PID_1=5..1000}] run summon minecraft:area_effect_cloud ~ ~1 ~


##Skyblock PID 1 Reset LOOP
execute as @a[scores={PID_1=2000000..}] run scoreboard players set @a PID_1 10000


###PID 1.20.3_1 - 1.20.3/1.20.4 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @a 280 45 0 0 0
execute in minecraft:overworld as @a[scores={PID_1=150}] run setblock 295 50 2 minecraft:barrel[facing=south,open=false]{Items:[{Count:1b,Slot:13b,id:"minecraft:coast_armor_trim_smithing_template"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Here you will find treasures of all kinds but be careful not to fall...","italic":true}'],MapColor:6911,Name:'{"text":"The Flyship","bold":true}'}}}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=100}] run tp @a 722 50 709 0 0
execute in minecraft:overworld as @a[scores={PID_1=255..}] run fill 723 48 704 721 48 706 minecraft:infested_cobblestone replace
execute in minecraft:overworld as @a[scores={PID_1=255..}] run setblock 722 48 703 minecraft:end_portal_frame[eye=false,facing=south] replace
execute in minecraft:overworld as @a[scores={PID_1=252}] run setblock 722 49 705 oak_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry,"}','{"text":"in this version..."}','{"text":";("}']}} destroy
execute in minecraft:overworld as @a[scores={PID_1=300}] run tp @a 508 46 71 0 0
execute in minecraft:overworld as @a[scores={PID_1=350}] run setblock 507 46 71 minecraft:barrel[facing=east,open=false]{Items:[{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"You fi al y cce ded an he e ot  r it s th t c n hel   u...","italic":true}'],MapColor:0,Name:'{"text":"J urn Sky lok #02","bold":true}'}}},{Count:1b,Slot:13b,id:"minecraft:sentry_armor_trim_smithing_template"}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=400}] run tp @a -694 46 -694 0 0
execute in minecraft:overworld as @a[scores={PID_1=450}] run setblock -696 47 -695 minecraft:barrel[facing=east,open=false]{Items:[{Count:1b,Slot:1b,id:"minecraft:book"},{Count:1b,Slot:2b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:3b,id:"minecraft:echo_shard"},{Count:1b,Slot:4b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:5b,id:"minecraft:echo_shard"},{Count:1b,Slot:6b,id:"minecraft:amethyst_shard"},{Count:1b,Slot:7b,id:"minecraft:book"},{Count:1b,Slot:8b,id:"minecraft:book"},{Count:1b,Slot:9b,id:"minecraft:book"},{Count:1b,Slot:10b,id:"minecraft:book"},{Count:1b,Slot:11b,id:"minecraft:fire_charge"},{Count:1b,Slot:12b,id:"minecraft:silence_armor_trim_smithing_template"},{Count:1b,Slot:13b,id:"minecraft:calibrated_sculk_sensor"},{Count:1b,Slot:14b,id:"minecraft:ward_armor_trim_smithing_template"},{Count:1b,Slot:15b,id:"minecraft:fire_charge"},{Count:1b,Slot:17b,id:"minecraft:book"},{Count:1b,Slot:18b,id:"minecraft:saddle"},{Count:1b,Slot:19b,id:"minecraft:fire_charge"},{Count:1b,Slot:22b,id:"minecraft:echo_shard"},{Count:1b,Slot:25b,id:"minecraft:fire_charge"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"This was my home but one day everything died...","italic":true}'],MapColor:4156559,Name:'{"text":"Deep Darkness","bold":true}'}}}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=400..450}] run kill @e[type=minecraft:warden]
execute in minecraft:overworld as @a[scores={PID_1=500}] run tp @a -179 50 -176 0 0
execute in minecraft:overworld as @a[scores={PID_1=550}] run setblock -179 52 -177 minecraft:chest[facing=west,type=single,waterlogged=false]{Items:[{Count:1b,Slot:12b,id:"minecraft:allay_spawn_egg"},{Count:1b,Slot:13b,id:"minecraft:vex_armor_trim_smithing_template"},{Count:1b,Slot:14b,id:"minecraft:allay_spawn_egg"},{Count:1b,Slot:26b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Here is a witch and is a black cat. I hope it will keep you friendship...","italic":true}'],MapColor:39183,Name:'{"text":"Weting","bold":true}'}}}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=600}] run tp @a -49 50 503 0 0
execute in minecraft:overworld as @a[scores={PID_1=650}] run setblock -49 50 503 minecraft:barrel[facing=west,open=false]{Items:[{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"Sorry for the traps but it\'s not easy to transport entire constructions. here is the reward...","italic":true}'],MapColor:1810688,Name:'{"text":"Jungle And Traps","bold":true}'}}},{Count:1b,Slot:13b,id:"minecraft:wild_armor_trim_smithing_template"}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=700}] run tp @a 71 59 -489 0 0
execute in minecraft:overworld as @a[scores={PID_1=710}] run setblock 73 58 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=711}] run setblock 74 57 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=712}] run setblock 75 56 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=713}] run setblock 76 55 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=720}] run fill 80 54 -494 74 54 -488 minecraft:cut_sandstone keep
execute in minecraft:overworld as @a[scores={PID_1=721}] run fill 74 57 -494 80 57 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=722}] run fill 80 57 -493 80 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=723}] run fill 79 57 -488 74 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=724}] run fill 74 57 -489 74 57 -493 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=725}] run fill 80 56 -488 74 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=726}] run fill 74 56 -489 74 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=727}] run fill 75 56 -494 80 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=728}] run fill 80 56 -493 80 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=729}] run fill 80 55 -488 74 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=730}] run fill 74 55 -489 74 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=731}] run fill 75 55 -494 80 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=732}] run fill 80 55 -493 80 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_1=733}] run fill 77 55 -494 77 56 -494 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=740}] run setblock 80 55 -491 minecraft:smooth_sandstone_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=741}] run setblock 80 56 -491 minecraft:smooth_sandstone_stairs[facing=east,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=742}] run setblock 77 55 -488 minecraft:smooth_sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=743}] run setblock 77 56 -488 minecraft:smooth_sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=744}] run setblock 74 55 -491 minecraft:smooth_sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=745}] run setblock 74 56 -491 minecraft:smooth_sandstone_stairs[facing=west,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_1=750}] run fill 75 54 -491 79 54 -491 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=755}] run fill 77 54 -489 77 54 -493 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=760}] run setblock 77 54 -491 minecraft:gold_block destroy
execute in minecraft:overworld as @a[scores={PID_1=761}] run fill 75 55 -493 79 55 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=762}] run fill 79 56 -493 75 56 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=763}] run fill 79 57 -493 75 58 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=764}] run setblock 75 58 -490 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_1=765}] run fill 77 55 -495 77 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=766}] run fill 76 56 -495 76 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=767}] run fill 75 58 -495 74 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=768}] run fill 78 59 -495 77 59 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_1=770}] run setblock 78 55 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:archer_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=771}] run setblock 75 55 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=772}] run setblock 75 55 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=773}] run setblock 77 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:miner_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=774}] run setblock 79 56 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=775}] run setblock 75 56 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=776}] run setblock 76 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=777}] run setblock 76 56 -492 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=778}] run setblock 78 58 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:prize_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=779}] run setblock 78 59 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=780}] run setblock 77 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=781}] run setblock 78 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=782}] run setblock 75 57 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=783}] run setblock 73 59 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:diamond"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=784}] run setblock 78 60 -494 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_1=785}] run setblock 77 55 -491 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:1b,Slot:0b,id:"minecraft:string"},{Count:1b,Slot:1b,id:"minecraft:brewer_pottery_sherd"},{Count:1b,Slot:2b,id:"minecraft:feather"},{Count:1b,Slot:3b,id:"minecraft:string"},{Count:1b,Slot:5b,id:"minecraft:sand"},{Count:1b,Slot:6b,id:"minecraft:saddle"},{Count:3b,Slot:7b,id:"minecraft:bone"},{Count:1b,Slot:8b,id:"minecraft:sand"},{Count:1b,Slot:9b,id:"minecraft:rotten_flesh"},{Count:3b,Slot:10b,id:"minecraft:sand"},{Count:1b,Slot:11b,id:"minecraft:string"},{Count:1b,Slot:13b,id:"minecraft:dune_armor_trim_smithing_template"},{Count:2b,Slot:14b,id:"minecraft:sand"},{Count:1b,Slot:15b,id:"minecraft:skull_pottery_sherd"},{Count:1b,Slot:16b,id:"minecraft:bone"},{Count:1b,Slot:17b,id:"minecraft:string"},{Count:2b,Slot:18b,id:"minecraft:bone"},{Count:1b,Slot:19b,id:"minecraft:sand"},{Count:1b,Slot:20b,id:"minecraft:sand"},{Count:1b,Slot:21b,id:"minecraft:arms_up_pottery_sherd"},{Count:1b,Slot:22b,id:"minecraft:sand"},{Count:1b,Slot:23b,id:"minecraft:bone"},{Count:2b,Slot:24b,id:"minecraft:rotten_flesh"},{Count:2b,Slot:25b,id:"minecraft:string"}]} destroy
execute in minecraft:overworld as @a[scores={PID_1=787}] run fill 73 58 -487 69 58 -491 minecraft:smooth_sandstone keep
execute in minecraft:overworld as @a[scores={PID_1=788}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}
execute in minecraft:overworld as @a[scores={PID_1=788}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}
execute in minecraft:overworld as @a[scores={PID_1=800}] run tp @a 486 55 384 0 0
execute in minecraft:overworld as @a[scores={PID_1=805}] run setblock 486 55 384 minecraft:fletching_table keep


##The Nether
execute in minecraft:the_nether as @a[scores={PID_1=900}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_1=950}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_1=951}] run setblock 5 58 34 minecraft:air replace
execute in minecraft:the_nether as @a[scores={PID_1=952}] run setblock 5 58 34 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Count:1b,Slot:2b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Count:1b,Slot:5b,id:"minecraft:chain"},{Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:8b,id:"minecraft:snout_armor_trim_smithing_template"},{Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:10b,id:"minecraft:rib_armor_trim_smithing_template"},{Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Count:1b,Slot:16b,id:"minecraft:chain"},{Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Count:1b,Slot:18b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:22b,id:"minecraft:netherite_upgrade_smithing_template"},{Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:24b,id:"minecraft:chain"},{Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} keep
execute in minecraft:the_nether as @a[scores={PID_1=955}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_1=956}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute in minecraft:overworld as @a[scores={PID_1=960}] run tp @a 0 66 0 0 0


##The End
#????


##Final Function PID
execute as @a[scores={PID_1=1001}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_1=1001}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_1=1005}] run tellraw @a ["",{"text":"Due to several problems in The End (","italic":true,"color":"red"},{"text":"see the bug #16","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/issues/16"}},{"text":"). the dimension has been suspended in this release until the issues are resolved.\nThanks you :)","italic":true,"color":"red"}]
execute as @a[scores={PID_1=1006}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_1=1007}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_1=1010}] run time set 0
execute as @a[scores={PID_1=1011}] run playsound minecraft:music_disc.relic ambient @a 0 65 0 10000 1
execute in minecraft:overworld at @a[scores={PID_1=1005}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_1=1011}] run gamemode survival @a