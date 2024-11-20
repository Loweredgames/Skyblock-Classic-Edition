#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##CUSTOM SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures_id=30..}] run scoreboard objectives add SkyblockCE_custom_structures dummy
execute as @a[scores={SkyblockCE_structures_id=35..}] run scoreboard players add @a SkyblockCE_custom_structures 1
scoreboard players add @a SkyblockCE_structures_id 1


##CUSTOM SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={SkyblockCE_custom_structures=5..105}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_custom_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_custom_structures=5..11}] run gamemode spectator @a


##CUSTOM FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={SkyblockCE_custom_structures=1..45}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_custom_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_custom_structures=6}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_custom_structures=6}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_custom_structures=6}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_custom_structures=7..40}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_custom_structures=7..40}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_custom_structures=7..40}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_custom_structures=10}] run time set 0
execute as @a[scores={SkyblockCE_custom_structures=11}] run advancement revoke @a only minecraft:nether/root
#Rimosso in questa versione (aggiunto nella 1.21)
execute as @a[scores={SkyblockCE_custom_structures=11}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_custom_structures=20}] run gamemode survival @a
execute as @a[scores={SkyblockCE_custom_structures=20..50}] run place template skyblock:air 0 0 0
execute as @a[scores={SkyblockCE_custom_structures=30}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={SkyblockCE_custom_structures=35}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={SkyblockCE_custom_structures=35}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={SkyblockCE_custom_structures=40}] run fill 0 0 0 0 1 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_custom_structures=41}] run effect clear @a
execute as @a[scores={SkyblockCE_custom_structures=41}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_custom_structures=41}] run scoreboard objectives remove SkyblockCE_level_dat
execute as @a[scores={SkyblockCE_custom_structures=45..50}] run gamerule doImmediateRespawn false


##SKYBLOCK ID DELAY (DELAY PID DELLA CONVERSIONE, NON TOCCARE)
execute as @a[scores={SkyblockCE_custom_structures=100}] run scoreboard objectives add SkyblockCE_id dummy


##CUSTOM FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_structures_id=2000000..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={SkyblockCE_custom_structures=2000000..}] run scoreboard players set @a SkyblockCE_custom_structures 10000


##CONVERSIONE AL FORMATO "SkyblockCE_custom_structures"
execute as @a[scores={SkyblockCE_test_structures=1..}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_test_structures=1..}] run scoreboard objectives add SkyblockCE_custom_structures dummy
execute as @a[scores={SkyblockCE_test_structures=1..}] run scoreboard players set @a SkyblockCE_custom_structures 10005
execute as @a[scores={SkyblockCE_custom_structures=2..}] run scoreboard objectives remove SkyblockCE_test_structures
execute as @a[scores={SkyblockCE_custom_structures=10100..}] run scoreboard objectives remove SkyblockCE_install_test
execute as @a[scores={SkyblockCE_custom_structures=10100..}] run scoreboard objectives remove SkyblockCE_final
execute as @a[scores={SkyblockCE_custom_structures=10100..}] run scoreboard objectives remove SkyblockCE_level_dat