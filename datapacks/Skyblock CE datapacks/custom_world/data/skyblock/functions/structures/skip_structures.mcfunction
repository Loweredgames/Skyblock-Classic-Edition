#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SKIP SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures_id=30..}] run scoreboard objectives add SkyblockCE_skip_structures dummy
execute as @a[scores={SkyblockCE_structures_id=35..}] run scoreboard players add @a SkyblockCE_skip_structures 1
scoreboard players add @a SkyblockCE_structures_id 1


##SKYBLOCK ID DELAY (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID DELLA CONVERSIONE)
execute as @a[scores={SkyblockCE_skip_structures=105}] run scoreboard objectives add SkyblockCE_id dummy


##SKIP SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={SkyblockCE_skip_structures=5..100}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_skip_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_skip_structures=5}] run gamemode spectator @a


##SKIP FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={SkyblockCE_skip_structures=1..25}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_skip_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_skip_structures=6}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_skip_structures=6}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_skip_structures=6}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_skip_structures=7..20}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_skip_structures=7..20}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_skip_structures=7..20}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_skip_structures=10}] run time set 0
execute as @a[scores={SkyblockCE_skip_structures=11}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_skip_structures=11}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_skip_structures=20}] run gamemode survival @a
execute as @a[scores={SkyblockCE_skip_structures=21}] run effect clear @a
execute as @a[scores={SkyblockCE_skip_structures=21}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_skip_structures=21}] run scoreboard objectives remove SkyblockCE_level_dat
execute as @a[scores={SkyblockCE_skip_structures=25..50}] run gamerule doImmediateRespawn false


##SKIP FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_structures_id=2000000..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={SkyblockCE_skip_structures=2000000..}] run scoreboard players set @a SkyblockCE_structures 10000