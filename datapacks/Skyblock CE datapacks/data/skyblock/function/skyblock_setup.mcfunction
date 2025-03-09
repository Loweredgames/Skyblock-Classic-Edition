#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Padlock
function skyblock:skyblock_mc_setup
function skyblock:versions/changelog/building
function skyblock:versions/version_pvn
function skyblock:versions/debug
function skyblock:multiplayer_setup


##Setup
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard
scoreboard objectives add SkyblockCE_install_fools dummy
scoreboard objectives add SkyblockCE_islands_fools dummy
scoreboard objectives add SkyblockCE_tp_fools dummy
scoreboard players add @a SkyblockCE_id_fools 1
scoreboard players add @a SkyblockCE_install_fools 1
scoreboard objectives add SkyblockCE_multiplayer dummy
scoreboard players add @a SkyblockCE_multiplayer 1
scoreboard objectives add SkyblockCE_multiplayer_reset dummy


##Scoreboard Reset
execute as @a[scores={SkyblockCE_id_fools=2000000..}] run scoreboard players set @a SkyblockCE_id_fools 10000
execute as @a[scores={SkyblockCE__fools=2000000..}] run scoreboard players set @a SkyblockCE__fools 10000


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
execute as @a[scores={SkyblockCE_install_fools=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install_fools=3}] run tellraw @a ["",{"text":"Welcome to the Skyblock Classic Edition - April Fools Edition","bold":true},{"text":" - "},{"text":"Version:","bold":true},{"text":" 6.1.0 The Removal Update - fork_JE-1.21>1.21.4-6.1.0-Skyblock_Classic_Edition:BUILDING:22.02.2025a","italic":true},{"text":"\n\n"},{"text":"for","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"1.21/1.21.1/1.21.2/1.21.3/1.21.4 Tricky Trials/Bundles of Bravery/The Garden Awakens Update/Drops","italic":true},{"text":"\n\n"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Click Below to Continue:","italic":true},{"text":"\n\n"},{"text":"APRILO 2025???","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands_fools 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"TEST INFO"}]}},{"text":"\n\n"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"From version: This version is incompatible and must be used with the correct April release of Minecraft.","italic":true},""]
execute as @a[scores={SkyblockCE_install_fools=1000..}] run scoreboard players set @a SkyblockCE_install_fools 1
execute as @a[scores={SkyblockCE_install_fools=1..}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_install_fools=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={SkyblockCE_install_fools=1}] run gamerule doDaylightCycle false
execute as @a[scores={SkyblockCE_install_fools=1}] run gamerule doWeatherCycle false
execute as @a[scores={SkyblockCE_install_fools=1}] run time set 0
execute as @a[scores={SkyblockCE_install_fools=1}] run weather clear 5001s
execute as @a[scores={SkyblockCE_install_fools=1}] run effect give @a saturation 6 255 true
execute as @a[scores={SkyblockCE_install_fools=1}] run effect give @a blindness 61 0 true
execute as @a[scores={SkyblockCE_install_fools=1}] run setworldspawn 0 63 0
execute as @a[scores={SkyblockCE_install_fools=1}] run xp set @a 0 points
execute as @a[scores={SkyblockCE_install_fools=1}] run xp set @a 0 levels
execute as @a[scores={SkyblockCE_install_fools=1}] run difficulty normal


##Quit Game
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game


##Teleports Setup
execute as @a[scores={SkyblockCE_tp_fools=1}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:overworld run tp @a[scores={SkyblockCE_tp=1}] 0 64 0 0 90