#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID LEGACY VERSIONS (DA AGGIUNGERE IL PID NUOVO QUANDO E FINITO DI CONVERTIRE, SE C'E QUALCOSA DA AGGIORNARE, AUMENTA IL CONTATORE QUANDO LA PRECEDENTE CONVERSIONE FINISCE. SOLO NELLA VERSIONE PIU VECCHI: AGGIUNGERE SEMPRE UNA NUOVA CATEGORIA MA DISABILITATA SEMPRE SOLO QUANDO IL PID DIVENTA VECCHIO (ESEMPIO PID 1), ABBILITARE QUANDO C'E LA NUOVA VERSIONE (ESEMPIO 1.21) E LA NUOVA CONVERSIONE (ESEMPIO PID 2, DISABILITARE PER IL FUTURO), AGGIUNGERE NEI COMMENTI LA VERSIONE DA ABBILITARE, RIPETERE IL LOOP).
execute as @a[scores={1.21_PID_0=-100..}] run scoreboard players set @a PID_0 1
execute as @a[scores={1.21_PID_0=-100..}] run scoreboard players set @a PID_1 1
#execute as @a[scores={1.21_PID_0=-100..}] run scoreboard players set @a w 1


##PID REMOVE FUNCTION (PER I PID OBSOLETI E PRONTI PER LA RIMOZIONE)
function skyblock_legacy_pid:pid_remove


##PID UPDATE OLD (AGGIUNGERE I PID VECCHI: ogni 3 versioni e poi l'ultima diventa incompatibile, quindi aggionare sempre in "update_pid", ABBILITARE SEMPRE NELLA VERSIONE LTS)
execute as @a[scores={PID_0=1..}] run scoreboard players add @a PID_legacy_v1 1
execute as @a[scores={PID_1=1..}] run scoreboard players add @a PID_legacy_v2 1
#execute as @a[scores={w=1..}] run scoreboard players add @a PID_legacy_v3 1


##PID LEGACY SCOREBOARD SETUP (LASCIARE COSI)
scoreboard objectives add PID_legacy_v1 dummy
scoreboard objectives add PID_legacy_v2 dummy
#scoreboard objectives add PID_legacy_v3 dummy da aggiungere in futuro


###PID LEGACY UPDATE (AGGIUNGERE TUTTI I PID VECCHI, AD ESEMPIO #PID_2, #PID_3, ECC.)


##PID_0 - 1.20.5/1.20.6 (LTS ABBILITARE IN 1.20.x, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)


##The Nether
execute as @a[scores={PID_legacy_v1=100..500}] run scoreboard players set @a SkyblockCE_islands 5
execute in minecraft:the_nether as @a[scores={PID_legacy_v1=300}] run tp @a 0 -3 30
execute in minecraft:the_nether as @a[scores={PID_legacy_v1=350}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={PID_legacy_v1=400}] run setblock 0 3 31 oak_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry.."}','{"text":";("}','{"text":"since: 1.0.0"}']}} destroy
execute in minecraft:the_nether as @a[scores={PID_legacy_v1=500}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={PID_legacy_v1=550}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PID_legacy_v1=600..700}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v1=700}] in minecraft:overworld run tp @a 0 66 0
execute in minecraft:overworld as @a[scores={PID_legacy_v1=750}] run setblock 0 62 0 minecraft:black_concrete keep
execute as @a[scores={PID_legacy_v1=830}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_legacy_v1=830}] run advancement revoke @a only minecraft:nether/root


##PID LEGACY SETUP - v1 (Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria).
execute as @a[scores={PID_legacy_v1=1..830}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v1=10..700}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_legacy_v1=10..700}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_legacy_v1=1..845}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PID_legacy_v1=840}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute in minecraft:overworld as @a[scores={PID_legacy_v1=845}] run gamemode survival @a
execute as @a[scores={PID_legacy_v1=845}] run scoreboard objectives add PID_1 dummy
execute as @a[scores={PID_legacy_v1=846}] run scoreboard players set @a PID_1 5


##PID_1 - 1.21/1.21.1 (LTS ABBILITARE IN 1.21.x, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)


##Overworld
execute in minecraft:overworld as @a[scores={PID_legacy_v2=100}] run tp @a 280 45 0 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=150}] run setblock 295 50 2 minecraft:barrel[facing=south,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:coast_armor_trim_smithing_template"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=200}] run tp @a 722 50 709 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=205}] run setblock 722 49 708 minecraft:air replace
execute in minecraft:overworld as @a[scores={PID_legacy_v2=210}] run setblock 722 49 708 chest[facing=south,type=single,waterlogged=false]{Items:[{Slot:3b,id:"minecraft:chorus_fruit",count:1},{Slot:4b,id:"minecraft:chorus_fruit",count:1},{Slot:5b,id:"minecraft:chorus_fruit",count:1},{Slot:10b,id:"minecraft:shulker_shell",count:1},{Slot:11b,id:"minecraft:chorus_fruit",count:1},{Slot:12b,id:"minecraft:eye_armor_trim_smithing_template",count:1},{Slot:13b,id:"minecraft:elytra",count:1,components:{"minecraft:damage":0}},{Slot:14b,id:"minecraft:spire_armor_trim_smithing_template",count:1},{Slot:15b,id:"minecraft:chorus_fruit",count:1},{Slot:16b,id:"minecraft:shulker_shell",count:1},{Slot:21b,id:"minecraft:chorus_fruit",count:1},{Slot:22b,id:"minecraft:chorus_fruit",count:1},{Slot:23b,id:"minecraft:chorus_fruit",count:1},{Slot:26b,id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"Lost Memories",author:"for you",generation:3,resolved:true,pages:['{"text":"10411611611211558474797114991041051181014611111410347100101116971051081154710811111511645109101109111114105101115955048494949494956","italic":true}']}}}]} replace
execute in minecraft:overworld as @a[scores={PID_legacy_v2=220}] run setblock 722 49 709 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"I\'m sorry but"}','{"text":"The End City"}','{"text":"is broken :("}','{"text":""}']},is_waxed:0b} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v2=255}] run fill 723 48 704 721 48 706 minecraft:infested_cobblestone keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=255}] run setblock 722 48 703 minecraft:obsidian replace
execute in minecraft:overworld as @a[scores={PID_legacy_v2=252}] run setblock 722 49 705 oak_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry,"}','{"text":"in this version..."}','{"text":";("}']}} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v2=300}] run tp @a 508 46 71 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=350}] run setblock 507 46 71 minecraft:barrel[facing=east,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:sentry_armor_trim_smithing_template"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=400}] run tp @a -694 46 -694 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=450}] run setblock -696 47 -695 minecraft:barrel[facing=east,open=false]{Items:[{count:1b,Slot:1b,id:"minecraft:book"},{count:1b,Slot:2b,id:"minecraft:amethyst_shard"},{count:1b,Slot:3b,id:"minecraft:echo_shard"},{count:1b,Slot:4b,id:"minecraft:amethyst_shard"},{count:1b,Slot:5b,id:"minecraft:echo_shard"},{count:1b,Slot:6b,id:"minecraft:amethyst_shard"},{count:1b,Slot:7b,id:"minecraft:book"},{count:1b,Slot:8b,id:"minecraft:book"},{count:1b,Slot:9b,id:"minecraft:book"},{count:1b,Slot:10b,id:"minecraft:book"},{count:1b,Slot:11b,id:"minecraft:fire_charge"},{count:1b,Slot:12b,id:"minecraft:silence_armor_trim_smithing_template"},{count:1b,Slot:13b,id:"minecraft:calibrated_sculk_sensor"},{count:1b,Slot:14b,id:"minecraft:ward_armor_trim_smithing_template"},{count:1b,Slot:15b,id:"minecraft:fire_charge"},{count:1b,Slot:17b,id:"minecraft:book"},{count:1b,Slot:18b,id:"minecraft:saddle"},{count:1b,Slot:19b,id:"minecraft:fire_charge"},{count:1b,Slot:22b,id:"minecraft:echo_shard"},{count:1b,Slot:25b,id:"minecraft:fire_charge"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=400..450}] run kill @e[type=minecraft:warden]
execute in minecraft:overworld as @a[scores={PID_legacy_v2=500}] run tp @a -179 50 -176 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=550}] run setblock -179 52 -177 minecraft:chest[facing=west,type=single,waterlogged=false]{Items:[{count:1b,Slot:12b,id:"minecraft:allay_spawn_egg"},{count:1b,Slot:13b,id:"minecraft:vex_armor_trim_smithing_template"},{count:1b,Slot:14b,id:"minecraft:allay_spawn_egg"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=600}] run tp @a -49 50 503 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=650}] run setblock -49 50 503 minecraft:barrel[facing=west,open=false]{Items:[{count:1b,Slot:13b,id:"minecraft:wild_armor_trim_smithing_template"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=700}] run tp @a 71 59 -489 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=780}] run setblock 77 55 -491 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{count:1b,Slot:0b,id:"minecraft:string"},{count:1b,Slot:1b,id:"minecraft:brewer_pottery_sherd"},{count:1b,Slot:2b,id:"minecraft:feather"},{count:1b,Slot:3b,id:"minecraft:string"},{count:1b,Slot:5b,id:"minecraft:sand"},{count:1b,Slot:6b,id:"minecraft:saddle"},{count:3b,Slot:7b,id:"minecraft:bone"},{count:1b,Slot:8b,id:"minecraft:sand"},{count:1b,Slot:9b,id:"minecraft:rotten_flesh"},{count:3b,Slot:10b,id:"minecraft:sand"},{count:1b,Slot:11b,id:"minecraft:string"},{count:1b,Slot:13b,id:"minecraft:dune_armor_trim_smithing_template"},{count:2b,Slot:14b,id:"minecraft:sand"},{count:1b,Slot:15b,id:"minecraft:skull_pottery_sherd"},{count:1b,Slot:16b,id:"minecraft:bone"},{count:1b,Slot:17b,id:"minecraft:string"},{count:2b,Slot:18b,id:"minecraft:bone"},{count:1b,Slot:19b,id:"minecraft:sand"},{count:1b,Slot:20b,id:"minecraft:sand"},{count:1b,Slot:21b,id:"minecraft:arms_up_pottery_sherd"},{count:1b,Slot:22b,id:"minecraft:sand"},{count:1b,Slot:23b,id:"minecraft:bone"},{count:2b,Slot:24b,id:"minecraft:rotten_flesh"},{count:2b,Slot:25b,id:"minecraft:string"}]} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=785}] run fill 73 58 -487 69 58 -491 minecraft:smooth_sandstone keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=800}] run tp @a -253 66 -476
execute in minecraft:overworld as @a[scores={PID_legacy_v2=805}] run fill -251 63 -478 -255 63 -474 minecraft:acacia_planks keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=850}] run setblock -253 64 -476 minecraft:spawner{Delay:0s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:armadillo"}},SpawnPotentials:[],SpawnRange:4s} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v2=855}] run setblock -253 64 -475 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['"To farming"','"armadillos"','""','""']},is_waxed:0b} destroy
execute in minecraft:overworld as @a[scores={PID_legacy_v2=856}] run setblock -253 65 -476 minecraft:torch keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=860}] run scoreboard players set @a SkyblockCE_level_dat 50000
execute in minecraft:overworld as @a[scores={PID_legacy_v2=860}] run tellraw @a [{"translate":"skyblock_classic_edition.warning_level.dat.issues","color":"red","italic":true},{"translate":"skyblock_classic_edition.warning_level.dat.download","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/raw/main/.worlds/.worlds-level.dat/Level.dat.zip"}},{"translate":"skyblock_classic_edition.warning_level.dat.copy_paste","color":"red","italic":true},{"text":"/scoreboard objectives add fix_custom_world dummy","underlined":true,"clickEvent":{"action":"copy_to_clipboard","value":"/scoreboard objectives add fix_custom_world dummy"}},{"translate":"skyblock_classic_edition.warning_level.dat.end","color":"red","italic":true}]
execute in minecraft:overworld as @a[scores={PID_legacy_v2=860}] run tp @a 722 50 703 0.0 0.0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=865}] run setblock 722 48 703 minecraft:cobweb destroy


##The Nether
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=900}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=950}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=951}] run setblock 5 58 34 chest[facing=north,type=single,waterlogged=false]{Items:[{Slot:0b,id:"minecraft:gilded_blackstone",count:2},{Slot:1b,id:"minecraft:piglin_banner_pattern",count:1},{Slot:2b,id:"minecraft:netherite_upgrade_smithing_template",count:1},{Slot:3b,id:"minecraft:magma_cream",count:1},{Slot:4b,id:"minecraft:gold_nugget",count:1},{Slot:5b,id:"minecraft:chain",count:1},{Slot:6b,id:"minecraft:music_disc_pigstep",count:1},{Slot:7b,id:"minecraft:gilded_blackstone",count:1},{Slot:8b,id:"minecraft:snout_armor_trim_smithing_template",count:1},{Slot:9b,id:"minecraft:netherite_scrap",count:1},{Slot:10b,id:"minecraft:rib_armor_trim_smithing_template",count:1},{Slot:11b,id:"minecraft:gold_nugget",count:1},{Slot:12b,id:"minecraft:gilded_blackstone",count:1},{Slot:13b,id:"minecraft:gilded_blackstone",count:1},{Slot:14b,id:"minecraft:magma_cream",count:1},{Slot:16b,id:"minecraft:chain",count:1},{Slot:17b,id:"minecraft:gold_nugget",count:1},{Slot:18b,id:"minecraft:chain",count:1},{Slot:20b,id:"minecraft:gilded_blackstone",count:1},{Slot:22b,id:"minecraft:netherite_upgrade_smithing_template",count:1},{Slot:23b,id:"minecraft:netherite_scrap",count:1},{Slot:24b,id:"minecraft:chain",count:1},{Slot:25b,id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:soul_speed":3}}}},{Slot:26b,id:"minecraft:magma_cream",count:2}]} keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=955}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_legacy_v2=956}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=960}] run tp @a 486 55 384 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=965}] run setblock 486 55 384 minecraft:fletching_table keep


###SUBPID LEGACY (AGGIUNGERE TUTTI I SUBPID ATTACCATO AL PID MADRE. SE NON CI SONO SUBPID NON AGGIUNGERE QUESTA SEZIONE)
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1000}] run tp @a -252 60 -476 0 0
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1110}] run setblock -252 52 -476 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1115}] run setblock -252 52 -476 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:7b,id:"minecraft:iron_nugget"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1120}] run setblock -262 57 -480 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1125}] run setblock -262 57 -480 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{count:32b,id:"minecraft:clay_ball"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1130}] run setblock -261 53 -478 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1135}] run setblock -261 53 -478 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:8b,id:"minecraft:string"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1140}] run setblock -265 47 -471 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1145}] run setblock -265 47 -471 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{count:12b,id:"minecraft:wheat"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1150}] run setblock -249 53 -482 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1155}] run setblock -249 53 -482 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{count:24b,id:"minecraft:brick"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1160}] run setblock -262 57 -471 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1165}] run setblock -262 57 -471 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{count:1b,id:"minecraft:orange_dye"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1170}] run setblock -245 53 -474 minecraft:air keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1175}] run setblock -245 53 -474 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{count:6b,id:"minecraft:blue_dye"}} keep
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1180}] run tp @a 0 65 0 0 0


##PID LEGACY SETUP - v2 (Aggiornato all'ultima versione: 6.0.0 Minecraft: 1.21) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria.
execute as @a[scores={PID_legacy_v2=1..1100}] run gamemode spectator @a
execute as @a[scores={PID_legacy_v2=10..1200}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_legacy_v2=10..1200}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_legacy_v2=1..1201}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PID_legacy_v2=1240}] run playsound minecraft:block.note_block.bell ambient @a 0 66 0 100 2
execute in minecraft:overworld as @a[scores={PID_legacy_v2=1245}] run gamemode survival @a
#execute as @a[scores={PID_legacy_v3=1345}] run scoreboard objectives add 1.22_PID_0 dummy - aggiungere in futuro il Pid legacy v1 della 1.22? qui
#execute as @a[scores={PID_legacy_v3=1346}] run scoreboard players set @a 1.22_PID_0 5 - aggiungere in futuro il Pid legacy v1 della 1.22? qui


##??? - ??? (LTS ABBILITARE IN ???, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)


##Overworld


##PID LEGACY SETUP - v3 (Aggiornato all'ultima versione: ??? Minecraft: ???) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria.


##PID LEGACY STOP (QUANDO FINISCE: CAMBIARE IL NUMERO PER RESETARE TUTTO, AGGIUNGERE SEMPRE NELLE NUOVE VERSIONI IL PID)
execute as @a[scores={PID_0=1..}] run scoreboard players set @a 1.21_PID_0 -100
execute as @a[scores={PID_1=1..}] run scoreboard players set @a 1.21_PID_0 -100
#execute as @a[scores={w=1..}] run scoreboard players set @a 1.21_PID_0 -100


##PID LEGACY REMOVE SETUP (DA AGGIORNARE QUANDO CAMBIA LA SCORE, IL PRIMO E LO ZERO E DEVE ESSERE MODIFICATO QUANDO FINISCE L'ULITMO PID LEGACY)
scoreboard objectives add PID_legacy_locks dummy
execute as @a[scores={PID_legacy_v1=1..5}] run scoreboard players set @a PID_legacy_locks 0
execute as @a[scores={PID_legacy_v1=850..}] run scoreboard players set @a PID_legacy_locks 1
execute as @a[scores={PID_legacy_v2=1460..}] run scoreboard players set @a PID_legacy_locks 2
#execute as @a[scores={PID_legacy_v3=1350..}] run scoreboard players set @a PID_legacy_locks 3
#execute as @a[scores={PID_legacy_v3=???..}] run scoreboard players set @a PID_legacy_locks 0 < da resetare in futuro


##PID LEGACY REMOVE (AGGIUNGERE SEMPRE L'ULTIMO PID LEGACY PER RIMUOVERE L'ULTIMO PID)
execute as @a[scores={PID_legacy_locks=1}] run scoreboard objectives remove PID_legacy_v1
execute as @a[scores={PID_legacy_locks=2}] run scoreboard objectives remove PID_legacy_v1
execute as @a[scores={PID_legacy_locks=2}] run scoreboard objectives remove PID_legacy_v2
#execute as @a[scores={PID_legacy_locks=3}] run scoreboard objectives remove PID_legacy_v1
#execute as @a[scores={PID_legacy_locks=3}] run scoreboard objectives remove PID_legacy_v2
#execute as @a[scores={PID_legacy_locks=3}] run scoreboard objectives remove PID_legacy_v3


##PID REMOVE (RIMUOVERE SOLO QUANDO E FINITO UN PID VECCHIO. CANCELLARE SOLO QUANDO E FINITA E AGGIORNARE IL CONTATORE)
execute as @a[scores={PID_legacy_locks=1..3}] run scoreboard objectives remove PID_0
execute as @a[scores={PID_legacy_locks=2..3}] run scoreboard objectives remove PID_1
#execute as @a[scores={PID_legacy_locks=3..3}] run scoreboard objectives remove
scoreboard objectives remove PID_legacy