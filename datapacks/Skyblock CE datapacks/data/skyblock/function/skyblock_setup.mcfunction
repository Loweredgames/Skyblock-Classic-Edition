#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock_legacy_pid:legacy_pid
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/default
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/large
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/small
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/very_small


##Function Padlock
function skyblock:import
function skyblock:skyblock_mc_setup
function skyblock:structures/custom_structures
function skyblock:structures/generated_biome
function skyblock_legacy:skyblock_legacy_setup
function skyblock:skyblock_test_setup
function skyblock:versions/changelog/building
function skyblock:versions/version_pvn
function skyblock:versions/debug
function skyblock:multiplayer_setup


##Setup
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard
scoreboard objectives add SkyblockCE_install dummy
scoreboard objectives add SkyblockCE_islands dummy
scoreboard objectives add SkyblockCE_tp dummy
scoreboard players add @a SkyblockCE_id 1
scoreboard players add @a SkyblockCE_install 1
scoreboard objectives add SkyblockCE_multiplayer dummy
scoreboard players add @a SkyblockCE_multiplayer 1
scoreboard objectives add SkyblockCE_multiplayer_reset dummy


##Scoreboard Reset
execute as @a[scores={SkyblockCE_id=2000000..}] run scoreboard players set @a SkyblockCE_id 10000
execute as @a[scores={SkyblockCE_large=2000000..}] run scoreboard players set @a SkyblockCE_large 10000
execute as @a[scores={SkyblockCE_default=2000000..}] run scoreboard players set @a SkyblockCE_default 10000
execute as @a[scores={SkyblockCE_small=2000000..}] run scoreboard players set @a SkyblockCE_small 10000
execute as @a[scores={SkyblockCE_very_small=2000000..}] run scoreboard players set @a SkyblockCE_very_small 10000
execute as @a[scores={SkyblockCE_import=2000000..}] run scoreboard players set @a SkyblockCE_import 10000


##Gamerules Setup
gamerule mobGriefing true
gamerule reducedDebugInfo false
gamerule enderPearlsVanishOnDeath true
gamerule waterSourceConversion true
gamerule lavaSourceConversion true
gamerule spectatorsGenerateChunks true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule forgiveDeadPlayers true
gamerule mobExplosionDropDecay true
gamerule commandModificationBlockLimit 1000000
gamerule maxCommandChainLength 1000000
gamerule playersNetherPortalCreativeDelay 1
gamerule playersNetherPortalDefaultDelay 80
gamerule spawnChunkRadius 2
gamerule projectilesCanBreakBlocks true
gamerule maxEntityCramming 24
gamerule randomTickSpeed 3
gamerule snowAccumulationHeight 3
gamerule showDeathMessages true
gamerule doMobLoot true
gamerule naturalRegeneration true
gamerule doVinesSpread true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doWardenSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true


##Islands Choices Setup
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":" - "},{"translate":"skyblock_classic_edition.skyblock_setup.version","bold":true},{"text":" 6.1.0 The Removal Update - JE-1.21>1.21.4-6.1.0-Skyblock_Classic_Edition:BUILDING:22.02.2025a","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.for_text","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"1.21/1.21.1/1.21.2/1.21.3/1.21.4 Tricky Trials/Bundles of Bravery/The Garden Awakens Update/Drops","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_languages","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.credits","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.large_easy","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.large_easy.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_normal","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_normal.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.small_hard","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 3"}},{"text":" ","color":"red"},[{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.small_hard.info"}]}}],{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.very_small_hard","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 4"}},{"text":" ","color":"dark_red"},{"text":"[?]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.very_small_hard.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.import","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 5"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.import.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible","italic":true},{"text":" "},{"text":"5.3.X LTS","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.to_text","italic":true},{"text":" "},{"text":"6.1.0","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.datapack","italic":true},""]
execute as @a[scores={SkyblockCE_install=1000..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_install=1..}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={SkyblockCE_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={SkyblockCE_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={SkyblockCE_install=1}] run time set 0
execute as @a[scores={SkyblockCE_install=1}] run weather clear 5001s
execute as @a[scores={SkyblockCE_install=1}] run effect give @a saturation 6 255 true
execute as @a[scores={SkyblockCE_install=1}] run effect give @a blindness 61 0 true
execute as @a[scores={SkyblockCE_install=1}] run setworldspawn 0 63 0
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 points
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 levels
execute as @a[scores={SkyblockCE_install=1}] run difficulty normal
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game


##Teleports Setup
execute as @a[scores={SkyblockCE_tp=1..6}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=2}] 67 60 -3 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=3}] 0 50 0 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=4}] 4 55 33 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=5}] -2 50 -50 0 90
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=6}] 25 70 1022 0 90