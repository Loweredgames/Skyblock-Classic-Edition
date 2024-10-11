#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP UPDATE PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)


##SCOREBOARD PID SETUP (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add 1.20.5_PID_0 dummy
scoreboard players add @a 1.20.5_PID_0 1


##SKYBLOCK PID RESET LOOP
execute as @a[scores={1.20.5_PID_0=2000000..}] run scoreboard players set @a 1.20.5_PID_0 10000


##SETUP UPDATE SUBPID (LASCIARE SEMPRE LA SCOREBOARD E SPOSTARE QUANDO DIVENTA LEGACY)
scoreboard players add @a 1.20.5_SUBPID_0_1 1
#scoreboard players add @a 1.20.5_PID_0_2 1


##SUBPID 1.20.5_0_1 - 1.20.6 (LASCIARE COSI. PER LA FUNZIONE SUBPID 0_1, VERSIONE MINORE DA SPOSTARE IN LEGACY QUANDO IL PID DIVENTA INCOMPATIBILE)
function skyblock_pid:subpid/mc1.20.5_subpid0_1
#function skyblock_pid:subpid/mc1.20.5_pid1_2


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE)
execute as @a[scores={1.20.5_PID_0=250..}] run scoreboard objectives add 1.20.5_SUBPID_0_1 dummy


##SUBPID END (QUANDO FINISCE IL PID AGGIUNGERE IL SUBPID O IL PID MA SOLO NEL PRIMO SUBPID. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPID DENTRO LA FUNZIONE)
#>execute as @a[scores={1.20.5_PID_0_1=1015..}] run scoreboard objectives add 1.20.5_PID_0_2 dummy (per il futuro)


##SCOREBOARD START 1.20.5_PID_0 (LASCIARE SEMPRE COSI, MODIFICARE SE LA CONVERSIONE E PIU CORTA O PIU LUNGHA, DISABILITARE TUTTO SE NON C'E NESSUN PID)
execute as @a[scores={SkyblockCE_final=351}] run scoreboard players set @a 1.20.5_PID_0 -250
execute as @a[scores={1.20.5_PID_0=5..100}] run gamemode spectator @a
execute as @a[scores={1.20.5_PID_0=5}] run time set 0
execute as @a[scores={1.20.5_PID_0=5}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.5_PID_0=5..200}] run effect give @a blindness 5 0 true
execute as @a[scores={1.20.5_PID_0=5..200}] run effect give @a night_vision 5 0 true
execute as @a[scores={1.20.5_PID_0=200}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.5_PID_0=205}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.5_PID_0=5..200}] run summon minecraft:area_effect_cloud ~ ~1 ~


###1.20.5_PID 0 - 1.20.6 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=100}] run tp @a -253 66 -476
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=105}] run fill -251 63 -478 -255 63 -474 minecraft:acacia_planks keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=150}] run setblock -253 64 -476 minecraft:spawner{Delay:0s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:armadillo"}},SpawnPotentials:[],SpawnRange:4s} destroy
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=155}] run setblock -253 64 -475 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['"To farming"','"armadillos"','""','""']},is_waxed:0b} destroy
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=156}] run setblock -253 65 -476 minecraft:torch keep
#execute in minecraft:overworld as @a[scores={1.20.5_PID_0=160}] run scoreboard players set @a SkyblockCE_level_dat 50000 (da riaggiungere nella 1.21, rimuovere il messagio sotto del level.dat)
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=160}] run tellraw @a [{"translate":"skyblock_classic_edition.warning_level.dat.issues","color":"red","italic":true},{"translate":"skyblock_classic_edition.warning_level.dat.download","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/raw/main/.worlds/.worlds-level.dat/Level.dat.zip"}},{"translate":"skyblock_classic_edition.warning_level.dat.copy_paste","color":"red","italic":true},{"text":"/scoreboard objectives add fix_custom_world dummy","underlined":true,"clickEvent":{"action":"copy_to_clipboard","value":"/scoreboard objectives add fix_custom_world dummy"}},{"translate":"skyblock_classic_edition.warning_level.dat.end","color":"red","italic":true}]
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=200}] run tp @a 722 50 703 0.0 0.0
execute in minecraft:overworld as @a[scores={1.20.5_PID_0=200..}] run setblock 722 48 703 minecraft:end_portal_frame[eye=false,facing=south] replace


##The Nether


##The End (???)


##FINAL GENERATED PID 1 FUNCTION (DISABILITARE TUTTO SE NON C'E NESSUN PID)
execute as @a[scores={1.20.5_PID_0=201}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={1.20.5_PID_0=201}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={1.20.5_PID_0=205}] run tellraw @a ["",{"text":"Due to several problems in The End (","italic":true,"color":"red"},{"text":"see the bug #16","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/issues/16"}},{"text":"). the dimension has been suspended in this release until the issues are resolved.\nThanks you :)","italic":true,"color":"red"}]
execute as @a[scores={1.20.5_PID_0=206}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={1.20.5_PID_0=207}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={1.20.5_PID_0=210}] run time set 0
execute as @a[scores={1.20.5_PID_0=211}] run playsound minecraft:music_disc.relic ambient @a 0 65 0 10000 1
execute in minecraft:overworld at @a[scores={1.20.5_PID_0=205}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.5_PID_0=211}] run gamemode survival @a