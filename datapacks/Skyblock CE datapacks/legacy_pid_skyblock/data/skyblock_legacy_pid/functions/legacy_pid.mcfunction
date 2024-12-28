#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID LEGACY VERSIONS (DA AGGIUNGERE IL PID NUOVO QUANDO E FINITO DI CONVERTIRE, SE C'E QUALCOSA DA AGGIORNARE, AUMENTA IL CONTATORE QUANDO LA PRECEDENTE CONVERSIONE FINISCE. SOLO NELLA VERSIONE PIU VECCHI: AGGIUNGERE SEMPRE UNA NUOVA CATEGORIA MA DISABILITATA SEMPRE SOLO QUANDO IL PID DIVENTA VECCHIO (ESEMPIO PID 1), ABBILITARE QUANDO C'E LA NUOVA VERSIONE (ESEMPIO 1.21) E LA NUOVA CONVERSIONE (ESEMPIO PID 2, DISABILITARE PER IL FUTURO), AGGIUNGERE NEI COMMENTI LA VERSIONE DA ABBILITARE, RIPETERE IL LOOP).
execute as @a[scores={1.20.6_PID_0=-100..}] run scoreboard players set @a ID_5 1
execute as @a[scores={1.20.6_PID_0=-100..}] run scoreboard players set @a PID_0 1
#execute as @a[scores={1.20.6_PID_0=-1000..}] run scoreboard players set @a PID_1 1 LTS ABBILITARE IN 1.21.x,


##PID REMOVE FUNCTION (PER I PID OBSOLETI E PRONTI PER LA RIMOZIONE)
function skyblock_legacy_pid:pid_remove


##PID UPDATE OLD (AGGIUNGERE I PID VECCHI: ogni 3 versioni e poi l'ultima diventa incompatibile, quindi aggionare sempre in "update_pid", ABBILITARE SEMPRE NELLA VERSIONE LTS)
execute as @a[scores={ID_5=1..}] run scoreboard players set @a PID_legacy_v1 1
execute as @a[scores={PID_0=1..}] run scoreboard players add @a PID_legacy_v2 1
#execute as @a[scores={PID_1=1..}] run scoreboard players add @a PID_legacy_v3 1 LTS ABBILITARE IN 1.21.x,


##PID REMOVE (RIMUOVERE SOLO QUANDO E FINITO UN PID VECCHIO. CANCELLARE SOLO QUANDO E FINITA E AGGIORNARE IL CONTATORE)
execute as @a[scores={PID_legacy_v1=100..}] run scoreboard objectives remove ID_5
execute as @a[scores={PID_legacy_v2=805..}] run scoreboard objectives remove PID_0
#execute as @a[scores={PID_legacy_v3=990..}] run scoreboard objectives remove PID_1 LTS ABBILITARE IN 1.21.x,


##PID LEGACY SCOREBOARD SETUP (LASCIARE COSI)
scoreboard objectives add PID_legacy_v1 dummy
scoreboard objectives add PID_legacy_v2 dummy
scoreboard objectives add PID_legacy_v3 dummy


###PID LEGACY UPDATE (AGGIUNGERE TUTTI I PID VECCHI, AD ESEMPIO #PID_2, #PID_3, ECC.)


##ID_5 (COMPATIBILITA LEGACY)
#execute as @a[scores={ID_5=1..}] run scoreboard objectives remove PID_0


##PID_0 - 1.20.4 (LTS ABBILITARE IN 1.20.x, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)


##The Nether
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=200}] run tp @a 0 -3 30
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=250}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=300}] run setblock 0 3 31 oak_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry.."}','{"text":";("}','{"text":"since: 1.0.0"}']}} destroy
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=400}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={PID_legacy_v2=450}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PID_legacy_v2=501..600}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v2=600}] in minecraft:overworld run tp @a 0 66 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=650}] run setblock 0 62 0 minecraft:black_concrete keep
#>execute as @a[scores={PID_legacy_v2=730}] run advancement revoke @a only minecraft:end/root (da riaggiungere in futuro)
execute as @a[scores={PID_legacy_v2=730}] run advancement revoke @a only minecraft:nether/root


##PID LEGACY SETUP - v2 (Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria).
execute as @a[scores={PID_legacy_v2=1..50}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v2=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_legacy_v2=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_legacy_v2=1..801}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PID_legacy_v2=740}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute as @a[scores={PID_legacy_v2=745}] run scoreboard objectives add PID_1 dummy
execute as @a[scores={PID_legacy_v2=750}] run scoreboard objectives add PID_legacy dummy


##PID_1 - 1.20.5/1.20.6 (LTS ABBILITARE IN 1.21.x, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)

#Sistemare nella 1.21 o in LTS e abbilitare
##Overworld
execute in minecraft:overworld as @a[scores={PID_legacy_v3=100}] run tp @a 280 45 0 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=150}] run setblock 295 50 2 minecraft:barrel[facing=south,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:coast_armor_trim_smithing_template"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=200}] run tp @a 722 50 709 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=205}] run setblock 722 49 708 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=210}] run setblock 722 49 708 chest[facing=south,type=single,waterlogged=false]{Items:[{Slot:3b,id:"minecraft:chorus_fruit",count:1},{Slot:4b,id:"minecraft:chorus_fruit",count:1},{Slot:5b,id:"minecraft:chorus_fruit",count:1},{Slot:10b,id:"minecraft:shulker_shell",count:1},{Slot:11b,id:"minecraft:chorus_fruit",count:1},{Slot:12b,id:"minecraft:eye_armor_trim_smithing_template",count:1},{Slot:13b,id:"minecraft:elytra",count:1,components:{"minecraft:damage":0}},{Slot:14b,id:"minecraft:spire_armor_trim_smithing_template",count:1},{Slot:15b,id:"minecraft:chorus_fruit",count:1},{Slot:16b,id:"minecraft:shulker_shell",count:1},{Slot:21b,id:"minecraft:chorus_fruit",count:1},{Slot:22b,id:"minecraft:chorus_fruit",count:1},{Slot:23b,id:"minecraft:chorus_fruit",count:1},{Slot:26b,id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Lost Memories",author:"for you",generation:3,resolved:true,pages:['{"text":"10411611611211558474797114991041051181014611111410347100101116971051081154710811111511645109101109111114105101115955048494949494956","italic":true}']}}}]} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=120}] run setblock 722 49 709 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"I\'m sorry but"}','{"text":"The End City"}','{"text":"is broken :("}','{"text":""}']},is_waxed:0b} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=255}] run fill 723 48 704 721 48 706 minecraft:infested_cobblestone keep
execute in minecraft:overworld as @a[scores={PID_legacy_v3=255}] run setblock 722 48 703 minecraft:obsidian replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=252}] run setblock 722 49 705 oak_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry,"}','{"text":"in this version..."}','{"text":";("}']}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=300}] run tp @a 508 46 71 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=350}] run setblock 507 46 71 minecraft:barrel[facing=east,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:sentry_armor_trim_smithing_template"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=400}] run tp @a -694 46 -694 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=450}] run setblock -696 47 -695 minecraft:barrel[facing=east,open=false]{Items:[{count:1b,Slot:1b,id:"minecraft:book"},{count:1b,Slot:2b,id:"minecraft:amethyst_shard"},{count:1b,Slot:3b,id:"minecraft:echo_shard"},{count:1b,Slot:4b,id:"minecraft:amethyst_shard"},{count:1b,Slot:5b,id:"minecraft:echo_shard"},{count:1b,Slot:6b,id:"minecraft:amethyst_shard"},{count:1b,Slot:7b,id:"minecraft:book"},{count:1b,Slot:8b,id:"minecraft:book"},{count:1b,Slot:9b,id:"minecraft:book"},{count:1b,Slot:10b,id:"minecraft:book"},{count:1b,Slot:11b,id:"minecraft:fire_charge"},{count:1b,Slot:12b,id:"minecraft:silence_armor_trim_smithing_template"},{count:1b,Slot:13b,id:"minecraft:calibrated_sculk_sensor"},{count:1b,Slot:14b,id:"minecraft:ward_armor_trim_smithing_template"},{count:1b,Slot:15b,id:"minecraft:fire_charge"},{count:1b,Slot:17b,id:"minecraft:book"},{count:1b,Slot:18b,id:"minecraft:saddle"},{count:1b,Slot:19b,id:"minecraft:fire_charge"},{count:1b,Slot:22b,id:"minecraft:echo_shard"},{count:1b,Slot:25b,id:"minecraft:fire_charge"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=400..450}] run kill @e[type=minecraft:warden]
execute in minecraft:overworld as @a[scores={PID_legacy_v3=500}] run tp @a -179 50 -176 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=550}] run setblock -179 52 -177 minecraft:chest[facing=west,type=single,waterlogged=false]{Items:[{count:1b,Slot:12b,id:"minecraft:allay_spawn_egg"},{count:1b,Slot:13b,id:"minecraft:vex_armor_trim_smithing_template"},{count:1b,Slot:14b,id:"minecraft:allay_spawn_egg"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=600}] run tp @a -49 50 503 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=650}] run setblock -49 50 503 minecraft:barrel[facing=west,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:wild_armor_trim_smithing_template"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=700}] run tp @a 71 59 -489 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=710}] run setblock 73 58 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=711}] run setblock 74 57 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=712}] run setblock 75 56 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=713}] run setblock 76 55 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=720}] run fill 80 54 -494 74 54 -488 minecraft:cut_sandstone keep
execute in minecraft:overworld as @a[scores={PID_legacy_v3=721}] run fill 74 57 -494 80 57 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=722}] run fill 80 57 -493 80 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=723}] run fill 79 57 -488 74 57 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=724}] run fill 74 57 -489 74 57 -493 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=725}] run fill 80 56 -488 74 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=726}] run fill 74 56 -489 74 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=727}] run fill 75 56 -494 80 56 -494 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=728}] run fill 80 56 -493 80 56 -488 minecraft:chiseled_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=729}] run fill 80 55 -488 74 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=730}] run fill 74 55 -489 74 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=731}] run fill 75 55 -494 80 55 -494 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=732}] run fill 80 55 -493 80 55 -488 minecraft:cut_sandstone destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=733}] run fill 77 55 -494 77 56 -494 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=740}] run setblock 80 55 -491 minecraft:smooth_sandstone_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=741}] run setblock 80 56 -491 minecraft:smooth_sandstone_stairs[facing=east,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=742}] run setblock 77 55 -488 minecraft:smooth_sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=743}] run setblock 77 56 -488 minecraft:smooth_sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=744}] run setblock 74 55 -491 minecraft:smooth_sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=745}] run setblock 74 56 -491 minecraft:smooth_sandstone_stairs[facing=west,half=top,shape=straight,waterlogged=false] destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=750}] run fill 75 54 -491 79 54 -491 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=755}] run fill 77 54 -489 77 54 -493 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=760}] run setblock 77 54 -491 minecraft:gold_block destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=761}] run fill 75 55 -493 79 55 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=762}] run fill 79 56 -493 75 56 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=763}] run fill 79 57 -493 75 58 -489 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=764}] run setblock 75 58 -490 minecraft:orange_terracotta destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=765}] run fill 77 55 -495 77 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=766}] run fill 76 56 -495 76 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=767}] run fill 75 58 -495 74 58 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=768}] run fill 78 59 -495 77 59 -495 minecraft:sand destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=770}] run setblock 78 55 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:archer_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=771}] run setblock 75 55 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=772}] run setblock 75 55 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=773}] run setblock 77 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:miner_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=774}] run setblock 79 56 -490 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=775}] run setblock 75 56 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=776}] run setblock 76 56 -491 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=777}] run setblock 76 56 -492 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=778}] run setblock 78 58 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:prize_pottery_sherd"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=779}] run setblock 78 59 -493 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:emerald"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=780}] run setblock 77 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=781}] run setblock 78 58 -489 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=782}] run setblock 75 57 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:gunpowder"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=783}] run setblock 73 59 -495 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:diamond"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=784}] run setblock 78 60 -494 minecraft:suspicious_sand[dusted=0]{item:{Count:1b,id:"minecraft:tnt"}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=785}] run setblock 77 55 -491 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{count:1b,Slot:0b,id:"minecraft:string"},{count:1b,Slot:1b,id:"minecraft:brewer_pottery_sherd"},{count:1b,Slot:2b,id:"minecraft:feather"},{count:1b,Slot:3b,id:"minecraft:string"},{count:1b,Slot:5b,id:"minecraft:sand"},{count:1b,Slot:6b,id:"minecraft:saddle"},{count:3b,Slot:7b,id:"minecraft:bone"},{count:1b,Slot:8b,id:"minecraft:sand"},{count:1b,Slot:9b,id:"minecraft:rotten_flesh"},{count:3b,Slot:10b,id:"minecraft:sand"},{count:1b,Slot:11b,id:"minecraft:string"},{count:1b,Slot:13b,id:"minecraft:dune_armor_trim_smithing_template"},{count:2b,Slot:14b,id:"minecraft:sand"},{count:1b,Slot:15b,id:"minecraft:skull_pottery_sherd"},{count:1b,Slot:16b,id:"minecraft:bone"},{count:1b,Slot:17b,id:"minecraft:string"},{count:2b,Slot:18b,id:"minecraft:bone"},{count:1b,Slot:19b,id:"minecraft:sand"},{count:1b,Slot:20b,id:"minecraft:sand"},{count:1b,Slot:21b,id:"minecraft:arms_up_pottery_sherd"},{count:1b,Slot:22b,id:"minecraft:sand"},{count:1b,Slot:23b,id:"minecraft:bone"},{count:2b,Slot:24b,id:"minecraft:rotten_flesh"},{count:2b,Slot:25b,id:"minecraft:string"}]} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v3=787}] run fill 73 58 -487 69 58 -491 minecraft:smooth_sandstone keep
execute in minecraft:overworld as @a[scores={PID_legacy_v3=788}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}
execute in minecraft:overworld as @a[scores={PID_legacy_v3=788}] run summon camel 71 60 -489 {CustomNameVisible:1b,PersistenceRequired:1b,CustomName:'{"text":"Camel"}'}


###SUBPID LEGACY (AGGIUNGERE TUTTI I SUBPID ATTACCATO AL PID MADRE. SE NON CI SONO SUBPID NON AGGIUNGERE QUESTA SEZIONE)
execute in minecraft:overworld as @a[scores={PID_legacy_v3=100}] run tp @a -252 60 -476 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=210}] run setblock -252 52 -476 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=215}] run setblock -252 52 -476 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:7b,id:"minecraft:iron_nugget"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=220}] run setblock -262 57 -480 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=225}] run setblock -262 57 -480 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{count:32b,id:"minecraft:clay_ball"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=230}] run setblock -261 53 -478 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=235}] run setblock -261 53 -478 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:8b,id:"minecraft:string"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=240}] run setblock -265 47 -471 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=245}] run setblock -265 47 -471 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:12b,id:"minecraft:wheat"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=250}] run setblock -249 53 -482 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=255}] run setblock -249 53 -482 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{count:24b,id:"minecraft:brick"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=260}] run setblock -262 57 -471 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=265}] run setblock -262 57 -471 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{count:1b,id:"minecraft:orange_dye"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=270}] run setblock -245 53 -474 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=275}] run setblock -245 53 -474 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{count:6b,id:"minecraft:blue_dye"}} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v3=800}] run tp @a 486 55 384 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v3=805}] run setblock 486 55 384 minecraft:fletching_table keep


##The Nether
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=900}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=950}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=951}] run setblock 5 58 34 minecraft:air replace
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=952}] run setblock 5 58 34 chest[facing=north,type=single,waterlogged=false]{Items:[{Slot:0b,id:"minecraft:gilded_blackstone",count:2},{Slot:1b,id:"minecraft:piglin_banner_pattern",count:1},{Slot:2b,id:"minecraft:netherite_upgrade_smithing_template",count:1},{Slot:3b,id:"minecraft:magma_cream",count:1},{Slot:4b,id:"minecraft:gold_nugget",count:1},{Slot:5b,id:"minecraft:chain",count:1},{Slot:6b,id:"minecraft:music_disc_pigstep",count:1},{Slot:7b,id:"minecraft:gilded_blackstone",count:1},{Slot:8b,id:"minecraft:snout_armor_trim_smithing_template",count:1},{Slot:9b,id:"minecraft:netherite_scrap",count:1},{Slot:10b,id:"minecraft:rib_armor_trim_smithing_template",count:1},{Slot:11b,id:"minecraft:gold_nugget",count:1},{Slot:12b,id:"minecraft:gilded_blackstone",count:1},{Slot:13b,id:"minecraft:gilded_blackstone",count:1},{Slot:14b,id:"minecraft:magma_cream",count:1},{Slot:16b,id:"minecraft:chain",count:1},{Slot:17b,id:"minecraft:gold_nugget",count:1},{Slot:18b,id:"minecraft:chain",count:1},{Slot:20b,id:"minecraft:gilded_blackstone",count:1},{Slot:22b,id:"minecraft:netherite_upgrade_smithing_template",count:1},{Slot:23b,id:"minecraft:netherite_scrap",count:1},{Slot:24b,id:"minecraft:chain",count:1},{Slot:25b,id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:soul_speed":3}}}},{Slot:26b,id:"minecraft:magma_cream",count:2}]} keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=955}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v3=956}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute in minecraft:overworld as @a[scores={PID_legacy_v3=960}] run tp @a 0 66 0 0 0


##PID LEGACY SETUP - v3 (Aggiornato all'ultima versione: 5.2.0 Minecraft: 1.20.5) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria.
execute as @a[scores={PID_legacy_v3=1..5000}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v3=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_legacy_v3=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_legacy_v3=1..801}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PID_legacy_v3=740}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
#execute as @a[scores={PID_legacy_v1=745}] run scoreboard objectives add 1.21_PID_2 dummy - aggiungere in futuro il Pid legacy v1 qui
execute as @a[scores={PID_legacy_v3=950}] run scoreboard objectives add PID_legacy dummy


##PID LEGACY STOP (QUANDO FINISCE: CAMBIARE IL NUMERO PER RESETARE TUTTO, AGGIUNGERE SEMPRE NELLE NUOVE VERSIONI IL PID)
execute as @a[scores={PID_0=1..}] run scoreboard players set @a 1.20.6_PID_0 -100
#execute as @a[scores={PID_1=1..}] run scoreboard players set @a 1.20.6_PID_0 -100


##PID LEGACY REMOVE (AGGIUNGERE SEMPRE L'ULTIMO PID LEGACY PER RIMUOVERE TUTTO)
scoreboard players add @a PID_legacy 1
execute as @a[scores={PID_legacy=105..}] run scoreboard objectives remove PID_legacy
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove PID_legacy_v1
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove PID_legacy_v2
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove PID_legacy_v3