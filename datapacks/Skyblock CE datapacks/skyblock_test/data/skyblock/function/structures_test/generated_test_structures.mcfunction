#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures_id=30..}] run scoreboard objectives add SkyblockCE_test_structures dummy
execute as @a[scores={SkyblockCE_structures_id=35..}] run scoreboard players add @a SkyblockCE_test_structures 1
scoreboard players add @a SkyblockCE_structures_id 1


##SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={SkyblockCE_test_structures=5..2000}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_test_structures=5..505}] run summon minecraft:area_effect_cloud 461 44 351
execute as @a[scores={SkyblockCE_test_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_test_structures=5..1300}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_test_structures=5}] run effect give @a blindness 72 0 true
execute as @a[scores={SkyblockCE_test_structures=6}] run effect give @a night_vision 71 0 true


##TELEPORT PLAYER IN THE STRUCTURES (AGGIUNGERE TUTTE LE STRUTTURE)

#Ocean Ruins
execute as @a[scores={SkyblockCE_test_structures=100}] run tp @a 488 45 -260 0 0

#Cherry Grove
execute as @a[scores={SkyblockCE_test_structures=200}] run tp @a -198 45 -485 0 0

#Trail Ruins
execute as @a[scores={SkyblockCE_test_structures=300}] run tp @a -266 45 -484 0 0

#Pillager Outpost
execute as @a[scores={SkyblockCE_test_structures=400}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={SkyblockCE_test_structures=500}] run tp @a 460 45 350 0 0

#Wolfs Pack
execute as @a[scores={SkyblockCE_test_structures=600}] run tp @a 570 44 350 0 0

#Swamp Hut
execute as @a[scores={SkyblockCE_test_structures=700}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={SkyblockCE_test_structures=800}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={SkyblockCE_test_structures=900}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={SkyblockCE_test_structures=1000}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={SkyblockCE_test_structures=1100}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={SkyblockCE_test_structures=1200}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={SkyblockCE_test_structures=1300}] run tp @a -700 45 -700 0 0


##GENERATED STRUCTURES (GENERA LE STRUTTURE QUANDO VIENE CREATO UN NUOVO MONDO)
execute as @a[scores={SkyblockCE_test_structures=150}] run place template skyblock:structures_test/ocean_ruins 488 45 -260
execute as @a[scores={SkyblockCE_test_structures=250}] run place template skyblock:structures_test/cherry_grove -198 45 -485
execute as @a[scores={SkyblockCE_test_structures=350}] run place template skyblock:structures_test/trail_ruins -266 45 -484
execute as @a[scores={SkyblockCE_test_structures=450}] run place template skyblock:structures_test/pillager_outpost 500 45 55
execute as @a[scores={SkyblockCE_test_structures=550}] run place template skyblock:structures_test/village 460 45 350
execute as @a[scores={SkyblockCE_test_structures=610}] run place template skyblock:structures_test/wolfs_pack 570 45 350
execute as @a[scores={SkyblockCE_test_structures=750}] run place template skyblock:structures_test/swamp_hut -180 45 -180
execute as @a[scores={SkyblockCE_test_structures=850}] run place template skyblock:structures_test/igloo 180 45 180
execute as @a[scores={SkyblockCE_test_structures=950}] run place template skyblock:structures_test/jungle_pyramids -60 45 500
execute as @a[scores={SkyblockCE_test_structures=1050}] run place template skyblock:structures_test/desert_pyramid 60 45 -500
execute as @a[scores={SkyblockCE_test_structures=1150}] run place template skyblock:structures_test/shipwrecks 280 45 0
execute as @a[scores={SkyblockCE_test_structures=1250}] run place template skyblock:structures_test/stronghold 700 45 700
execute as @a[scores={SkyblockCE_test_structures=1350}] run place template skyblock:structures_test/ancient_city -700 45 -700


##FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={SkyblockCE_test_structures=1..1300}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_test_structures=1400..1505}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_test_structures=1400}] run tp @s 0 66 0 90 0
execute as @a[scores={SkyblockCE_test_structures=1405..1505}] run place template skyblock:air 0 0 0
execute as @a[scores={SkyblockCE_test_structures=1410}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={SkyblockCE_test_structures=1415}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={SkyblockCE_test_structures=1420}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={SkyblockCE_test_structures=1425}] run fill 0 0 0 0 1 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_test_structures=1426}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={SkyblockCE_test_structures=1426}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={SkyblockCE_test_structures=1440}] run effect clear @a minecraft:blindness
execute as @a[scores={SkyblockCE_test_structures=1440}] run effect clear @a minecraft:night_vision


##SKYBLOCK SETUP FINAL GENERATED (AGGIORNARE SE LA SCORE E STATA CAMBIATA)
execute as @a[scores={SkyblockCE_test_structures=1500..5005}] run scoreboard players add @a SkyblockCE_final 1
scoreboard objectives add SkyblockCE_final dummy


##SKYBLOCK FINAL GENERATED ISLANDS (GENERA LA POSIZIONE DEL GIOCATORE QUANDO SONO FINITE LE SCORE)
execute as @a[scores={SkyblockCE_final=105}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_final=106}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_final=106}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_final=106}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_final=107..200}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_final=107..200}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_final=107..200}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_final=107..200}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_final=110}] run time set 0
execute as @a[scores={SkyblockCE_final=110}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_final=118}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_final=120}] run gamemode survival @a
execute as @a[scores={SkyblockCE_final=130}] run playsound minecraft:block.amethyst_cluster.break ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_final=140}] run scoreboard objectives remove SkyblockCE_level_dat


##SKYBLOCK ID DELAY (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID DELLA CONVERSIONE)
execute as @a[scores={SkyblockCE_final=350}] run scoreboard objectives add SkyblockCE_id dummy


##FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_test_structures=5000..}] run scoreboard players set @a SkyblockCE_final 100000
execute as @a[scores={SkyblockCE_structures_id=2000000..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={SkyblockCE_test_structures=2000000..}] run scoreboard players set @a SkyblockCE_test_structures 10000