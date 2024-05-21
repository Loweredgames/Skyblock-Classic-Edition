#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/legacy_version
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/default
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/large
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/small


##Function Padlock
function skyblock:versions/changelog/building
function skyblock:versions/changelog/nightly_building
function skyblock:islands/structures/generated_islands
function skyblock:versions/version_pvn
function skyblock:multiplayer_setup
function skyblock:versions/refactoring_scoreboard


##Setup
recipe give @a *
setblock 0 62 0 minecraft:bedrock keep
execute as @a[scores={SkyblockCE_tp=1}] run effect give @a minecraft:regeneration 64 250 true


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


##Gamerules Setup
gamerule reducedDebugInfo false
gamerule spectatorsGenerateChunks true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule forgiveDeadPlayers true
gamerule maxCommandChainLength 1000000
gamerule maxEntityCramming 24
gamerule randomTickSpeed 3
gamerule showDeathMessages true
gamerule keepInventory false
gamerule mobGriefing true
gamerule doMobLoot true
gamerule naturalRegeneration true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true


##Islands Choices Setup
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"text":"Welcome to the Skyblock Classic Edition","bold":true},{"text":" - "},{"text":"Version:","bold":true},{"text":" 5.0.0 Old Update - JE-1.18.2-Skyblock_Classic_Edition:5.0.0","italic":true},{"text":"\n\n"},{"text":"for","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"1.18.2 Caves & Cliffs II","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Translation Credits: Lorenzo Giannini (Loweredgames)","italic":true,"color":"#FFE28B"},{"text":"\n\n"},{"text":"This old version is locked to english and no other languages are available...","italic":true,"color":"dark_red"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Choose the islands:","italic":true},{"text":"\n\n"},{"text":"\u25b6Large (Easy)","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"This island is made especially for beginners. This island is the only island not inspired by the original skyblock."}]}},{"text":"\n\n"},{"text":"\u25b6Default (Normal)","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"This island is the classic island that everyone knows but modernized for new versions of Minecraft. Recommended for those unfamiliar with the original skyblock."}]}},{"text":"\n\n"},{"text":"\u25b6Small (Hard)","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This island is very reminiscent of the original skyblock 2.0 but modernized for new versions of Minecraft. For those who love difficult challenges and know all the tricks and technical notions of the vanilla survival mode."}]}},{"text":"\n\n"},{"text":"From version:","italic":true},{"text":" "},{"text":"5.0.0 - Minecraft: 1.20.1","italic":true},{"text":" "},{"text":"is compatible with the datapack.","italic":true}]
execute as @a[scores={SkyblockCE_install=1000..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_install=1..}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={SkyblockCE_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={SkyblockCE_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={SkyblockCE_install=1}] run time set 0
execute as @a[scores={SkyblockCE_install=1}] run weather clear 5001
execute as @a[scores={SkyblockCE_install=1}] run effect give @a saturation 6 250 true
execute as @a[scores={SkyblockCE_install=1}] run effect give @a blindness 61 0 true
execute as @a[scores={SkyblockCE_install=1}] run setworldspawn 0 63 0
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 points
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 levels


##Quit Game
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players reset @a SkyblockCE_quit_game


##Teleports Setup
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=1}] 0 64 0 0 90
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=2}] 67 60 -3 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=3}] 0 50 0 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=4}] 4 55 33 0 90
execute in minecraft:the_nether run tp @a[scores={SkyblockCE_tp=5}] -2 50 -50 0 90