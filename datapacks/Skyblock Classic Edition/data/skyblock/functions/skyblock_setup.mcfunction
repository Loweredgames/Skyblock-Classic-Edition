#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup
function test_skyblock:skyblock_test_setup
function skyblock:versions/changelog/building
function skyblock:versions/version_pvn
function skyblock:versions/legacy_pid_setup
function skyblock:islands/default
function skyblock:islands/large
function skyblock:islands/small
function skyblock:islands/structures/generated_structures
function skyblock:islands/structures/legacy_structures
function skyblock:islands/structures/generated_biome
function skyblock:multiplayer


##Setup
recipe give @a *
setblock 0 62 0 minecraft:bedrock keep
execute as @a[scores={SkyblockCE_tp=1}] run effect give @a minecraft:regeneration 64 250 true


##Scoreboard
scoreboard players add @a SkyblockCE_id 1
scoreboard players add @a multiplayer 1
scoreboard objectives add multiplayer_popup dummy
scoreboard players add @a multiplayer_popup 1
scoreboard objectives add SkyblockCE_install dummy
scoreboard objectives add SkyblockCE_islands dummy
scoreboard players add @a SkyblockCE_install 1
scoreboard objectives add SkyblockCE_tp dummy


##Scoreboard Reset
execute as @a[scores={SkyblockCE_id=2000000..}] run scoreboard players set @a SkyblockCE_id 10000
execute as @a[scores={SkyblockCE_large=2000000..}] run scoreboard players set @a SkyblockCE_large 10000
execute as @a[scores={SkyblockCE_default=2000000..}] run scoreboard players set @a SkyblockCE_default 10000
execute as @a[scores={SkyblockCE_small=2000000..}] run scoreboard players set @a SkyblockCE_small 10000


##Gamerules Setup
gamerule reducedDebugInfo false
gamerule waterSourceConversion true
gamerule lavaSourceConversion true
gamerule spectatorsGenerateChunks true
gamerule commandModificationBlockLimit 1000000
gamerule maxCommandChainLength 1000000
gamerule maxEntityCramming 24
gamerule randomTickSpeed 3
gamerule snowAccumulationHeight 3
gamerule showDeathMessages true
gamerule keepInventory false
gamerule naturalRegeneration true
gamerule doVinesSpread true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doWardenSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true


##Islands Choices Setup
execute as @a[scores={SkyblockCE_install=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":" - "},{"translate":"skyblock_classic_edition.skyblock_setup.version","bold":true},{"text":" 5.0.0 Historical Tales Update - JE-1.20.1-Skyblock_Classic_Edition:5.0.0","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.for_text","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"1.20.1 Trails & Tales Update","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_languages","italic":true},{"text":"\n\n"},{"translate":"credits","italic":true,"color":"#FFE28B"},{"text":"\n\n"},{"translate":"version","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.large_easy","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.large_easy.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_normal","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_normal.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.small_hard","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.small_hard.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible","italic":true},{"text":" "},{"text":"2.0.0","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.to_text","italic":true},{"text":" "},{"text":"5.0.0","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.datapack","italic":true}]
execute as @a[scores={SkyblockCE_install=1000..}] run scoreboard players set @a SkyblockCE_install 0
execute as @a[scores={SkyblockCE_install=1..}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={SkyblockCE_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={SkyblockCE_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={SkyblockCE_install=1}] run time set 0
execute as @a[scores={SkyblockCE_install=1}] run weather clear 5001s
execute as @a[scores={SkyblockCE_install=1}] run effect give @a saturation 6 250 true
execute as @a[scores={SkyblockCE_install=1}] run effect give @a blindness 61 0 true
execute as @a[scores={SkyblockCE_install=1}] run setworldspawn 0 63 0
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 points
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 levels
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game
scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 0
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players reset @a SkyblockCE_quit_game


##Teleports Setup
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=2}] 67 60 -3 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=3}] 0 50 0 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=4}] 4 55 33 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=5}] -2 50 -50 0 90