#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock Classic Edition Import
execute as @a[scores={SkyblockCE_islands=4}] run scoreboard objectives add SkyblockCE_import minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=4}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyblockCE_import=1..}] run clear @a written_book[custom_data={tag:generated_book}]
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_install_test -2
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_id 24000
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_structures_id 24005
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_custom_structures 24000
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_test_structures 24000
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_large 24000
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_default 24000
execute as @a[scores={SkyblockCE_import=1..}] run scoreboard players set @a SkyblockCE_small 24000
execute as @a[scores={SkyblockCE_import=1..100}] run summon minecraft:area_effect_cloud ~ ~1 ~


##START GENERATED FUNCTION
execute as @a[scores={SkyblockCE_import=2}] run gamerule commandBlockOutput false
execute as @a[scores={SkyblockCE_import=2}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute as @a[scores={SkyblockCE_import=2}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute as @a[scores={SkyblockCE_import=2}] run title @a times 30 200 20


##Generated Platform
execute in minecraft:overworld as @a[scores={SkyblockCE_import=2}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={SkyblockCE_import=3}] run give @p map
execute as @a[scores={SkyblockCE_import=3}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_import=3}] run fill 1 62 1 -1 62 -1 minecraft:glass keep


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyblockCE_import=10..}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_import=1..24}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_import=11}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_import=11}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_import=11}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_import=11..24}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_import=11..24}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_import=11..24}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_import=11}] run time set 0
execute as @a[scores={SkyblockCE_import=11}] run execute in minecraft:overworld run tp @p 0 65 0 0.0 0.0
execute as @a[scores={SkyblockCE_import=15..24}] run gamemode survival @a
execute as @a[scores={SkyblockCE_import=15}] run spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_import=15}] run weather clear 1000s
execute as @a[scores={SkyblockCE_import=15}] run effect clear @a
execute as @a[scores={SkyblockCE_import=15..24}] run stopsound @a
execute as @a[scores={SkyblockCE_import=15}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_import=15}] run scoreboard objectives setdisplay list kills
execute as @a[scores={SkyblockCE_import=15}] run playsound minecraft:block.note_block.bit ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_import=24..100}] run effect give @a minecraft:regeneration 11 250 false
execute as @a[scores={SkyblockCE_import=24..100}] run effect give @a minecraft:resistance 11 250 false
execute as @a[scores={SkyblockCE_import=24..100}] run gamerule doImmediateRespawn false