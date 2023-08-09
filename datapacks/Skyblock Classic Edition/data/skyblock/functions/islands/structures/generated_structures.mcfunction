#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Structure Setup
scoreboard players add @a PSN_OLD 1
scoreboard players add @a SkyblockCE_structures 1
execute as @a[scores={SkyblockCE_structures=5}] run scoreboard objectives add PSN_OLD dummy
execute as @a[scores={SkyblockCE_structures=15..20}] run scoreboard objectives remove SkyblockCE_structures
execute as @a[scores={PSN_OLD=1}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PSN_OLD=1}] run gamemode spectator @a
execute as @a[scores={PSN_OLD=..1200}] run effect give @a blindness 11 0 true
execute as @a[scores={PSN_OLD=..1200}] run effect give @a night_vision 12 0 true
execute as @a[scores={PSN_OLD=..1}] run effect clear @a
execute as @a[scores={PSN_OLD=..1200}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PSN_OLD=2000000..}] run scoreboard players set @a PSN_OLD 10005


##SkyblockCE_id (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID_X PER LE FUNZIONI default/large/small)
execute as @a[scores={SkyblockCE_large=1780}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_default=1780}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_small=1780}] run scoreboard objectives add SkyblockCE_id dummy


##Teleport Players Structures (AGGIUNGERE LE STRUTTURE)

#Pillager Outpost
execute as @a[scores={PSN_OLD=100}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={PSN_OLD=200}] run tp @a 460 45 350 0 0

#Swamp Hut
execute as @a[scores={PSN_OLD=300}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={PSN_OLD=400}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={PSN_OLD=500}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={PSN_OLD=600}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={PSN_OLD=700}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={PSN_OLD=800}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={PSN_OLD=900}] run tp @a -700 45 -700 0 0

#Mushroom House
execute as @a[scores={PSN_OLD=1000}] run tp @a 0 45 1000 0 0

#Ocean Ruins
execute as @a[scores={PSN_OLD=1100}] run tp @a 488 45 -260 0 0


##Generated Structures
execute as @a[scores={PSN_OLD=150}] run place template skyblock:structures/pillager_outpost 500 45 55
execute as @a[scores={PSN_OLD=250}] run place template skyblock:structures/village 460 45 350
execute as @a[scores={PSN_OLD=350}] run place template skyblock:structures/swamp_hut -180 45 -180
execute as @a[scores={PSN_OLD=450}] run place template skyblock:structures/igloo 180 45 180
execute as @a[scores={PSN_OLD=550}] run place template skyblock:structures/jungle_pyramids -60 45 500
execute as @a[scores={PSN_OLD=650}] run place template skyblock:structures/desert_pyramid 60 45 -500
execute as @a[scores={PSN_OLD=750}] run place template skyblock:structures/shipwrecks 280 45 0
execute as @a[scores={PSN_OLD=850}] run place template skyblock:structures/stronghold 700 45 700
execute as @a[scores={PSN_OLD=950}] run place template skyblock:structures/ancient_city -700 45 -700
execute as @a[scores={PSN_OLD=1050}] run place template skyblock:structures/mushroom_house 0 45 1000
execute as @a[scores={PSN_OLD=1150}] run place template skyblock:structures/ocean_ruins 488 45 -260


##Final Function Structures
execute as @a[scores={PSN_OLD=1}] run gamerule doImmediateRespawn true
execute as @a[scores={PSN_OLD=1200}] run gamerule doImmediateRespawn false
execute as @a[scores={PSN_OLD=1200}] run tp @a 0 66 0 90 0
execute as @a[scores={PSN_OLD=1205}] run gamemode survival @a
execute as @a[scores={PSN_OLD=1205}] run title @a times 20 100 20
execute as @a[scores={PSN_OLD=1205}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={PSN_OLD=1205}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={PSN_OLD=1200..1900}] run place template skyblock:air 0 0 0
execute as @a[scores={PSN_OLD=1210}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition/releases"}},{"text":".\\u26a0","italic":true,"color":"red"}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={PSN_OLD=1210}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={PSN_OLD=1215}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={PSN_OLD=1300}] run fill 0 0 0 0 1 0 minecraft:air destroy