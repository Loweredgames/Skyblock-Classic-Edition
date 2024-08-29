#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures_id=30..}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={SkyblockCE_structures_id=35..}] run scoreboard players add @a SkyblockCE_structures 1
scoreboard players add @a SkyblockCE_structures_id 1


##SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures=1155..}] run scoreboard players add @a 1.20.5_PSN_0 1
execute as @a[scores={SkyblockCE_structures=5..2000}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_structures=5..300}] run summon minecraft:area_effect_cloud 461 44 351
execute as @a[scores={SkyblockCE_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_structures=5}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_structures=5}] run effect give @a blindness 62 0 true
execute as @a[scores={SkyblockCE_structures=6}] run effect give @a night_vision 61 0 true


##STRUCTURES DELAY PSN (DELAY PER IL PSN E CREAZIONE DELLA SCORE)
execute as @a[scores={SkyblockCE_structures=1155}] run scoreboard objectives add 1.20.5_PSN_0 dummy


##TELEPORT PLAYER IN THE STRUCTURES (AGGIUNGERE TUTTE LE STRUTTURE)

#Pillager Outpost
execute as @a[scores={SkyblockCE_structures=100}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={SkyblockCE_structures=200}] run tp @a 460 45 350 0 0

#Swamp Hut
execute as @a[scores={SkyblockCE_structures=300}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={SkyblockCE_structures=400}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={SkyblockCE_structures=500}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={SkyblockCE_structures=600}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={SkyblockCE_structures=700}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={SkyblockCE_structures=800}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={SkyblockCE_structures=900}] run tp @a -700 45 -700 0 0


##GENERATED STRUCTURES (GENERA LE STRUTTURE QUANDO VIENE CREATO UN NUOVO MONDO)
execute as @a[scores={SkyblockCE_structures=150}] run place template skyblock:structures/pillager_outpost 500 45 55
execute as @a[scores={SkyblockCE_structures=250}] run place template skyblock:structures/village 460 45 350
execute as @a[scores={SkyblockCE_structures=350}] run place template skyblock:structures/swamp_hut -180 45 -180
execute as @a[scores={SkyblockCE_structures=450}] run place template skyblock:structures/igloo 180 45 180
execute as @a[scores={SkyblockCE_structures=550}] run place template skyblock:structures/jungle_pyramids -60 45 500
execute as @a[scores={SkyblockCE_structures=650}] run place template skyblock:structures/desert_pyramid 60 45 -500
execute as @a[scores={SkyblockCE_structures=750}] run place template skyblock:structures/shipwrecks 280 45 0
execute as @a[scores={SkyblockCE_structures=850}] run place template skyblock:structures/stronghold 700 45 700
execute as @a[scores={SkyblockCE_structures=950}] run place template skyblock:structures/ancient_city -700 45 -700


##FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={SkyblockCE_structures=1..1000}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_structures=1000..1100}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_structures=1000}] run tp @s 0 66 0 90 0
execute as @a[scores={SkyblockCE_structures=1005}] run gamemode survival @a
execute as @a[scores={SkyblockCE_structures=1005..1105}] run place template skyblock:air 0 0 0
execute as @a[scores={SkyblockCE_structures=1010}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={SkyblockCE_structures=1015}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={SkyblockCE_structures=1020}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={SkyblockCE_structures=1025}] run fill 0 0 0 0 1 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_structures=1040}] run effect clear @a minecraft:blindness
execute as @a[scores={SkyblockCE_structures=1040}] run effect clear @a minecraft:night_vision


##FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_structures_id=2000000..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={SkyblockCE_structures=2000000..}] run scoreboard players set @a SkyblockCE_structures 10000
execute as @a[scores={1.20.5_PSN_0=2000000..}] run scoreboard players set @a 1.20.5_PSN_0 10000