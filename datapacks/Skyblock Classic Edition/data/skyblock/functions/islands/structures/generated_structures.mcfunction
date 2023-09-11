#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Structure Setup
scoreboard players add @a PSN_OLD 1
scoreboard players add @a SkyblockCE_structures 1
execute as @a[scores={SkyblockCE_structures=5}] run scoreboard objectives add PSN_OLD dummy
execute as @a[scores={SkyblockCE_structures=15..20}] run scoreboard objectives remove SkyblockCE_structures
execute as @a[scores={PSN_OLD=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PSN_OLD=5}] run gamemode spectator @a
execute as @a[scores={PSN_OLD=5..1200}] run effect give @a blindness 11 0 true
execute as @a[scores={PSN_OLD=6..1200}] run effect give @a night_vision 12 0 true
execute as @a[scores={PSN_OLD=..1}] run effect clear @a
execute as @a[scores={PSN_OLD=5..1200}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PSN_OLD=2000000..}] run scoreboard players set @a PSN_OLD 10005


##Multiplayer PSN
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_structures 25
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_OLD 24000


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



##Final Function Structures
execute as @a[scores={PSN_OLD=1}] run gamerule doImmediateRespawn true
execute as @a[scores={PSN_OLD=1200}] run gamerule doImmediateRespawn false
execute as @a[scores={PSN_OLD=1200}] run tp @a 0 66 0 90 0
execute as @a[scores={PSN_OLD=1205}] run gamemode survival @a
execute as @a[scores={PSN_OLD=1205}] run title @a times 20 100 20
execute as @a[scores={PSN_OLD=1205}] run title @a title {"text":"Structures:","italic":true}
execute as @a[scores={PSN_OLD=1205}] run title @a subtitle {"text":"They were generated...","italic":true}