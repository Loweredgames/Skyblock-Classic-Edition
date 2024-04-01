#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Fool
function skyblock:islands/start
function skyblock:versions/changelog/building
function skyblock:islands/structures/generated_biome
function skyblock:islands/structures/generated_structures
function skyblock:versions/version_pvn
function skyblock:multiplayer_setup


##Setup Fool
recipe give @a *
setblock 0 62 0 minecraft:bedrock keep


##Scoreboard Fool
scoreboard objectives add SkyblockCE_install dummy
scoreboard objectives add SkyblockCE_islands dummy
scoreboard objectives add SkyblockCE_tp_fool dummy
scoreboard players add @a SkyblockCE_id 1
scoreboard players add @a SkyblockCE_install 1
scoreboard objectives add SkyblockCE_multiplayer dummy
scoreboard players add @a SkyblockCE_multiplayer 1
scoreboard objectives add SkyblockCE_multiplayer_reset dummy


##Scoreboard Reset Fool
execute as @a[scores={SkyblockCE_id=2000000..}] run scoreboard players set @a SkyblockCE_id 10000
execute as @a[scores={SkyblockCE_islands_april_fool=2000000..}] run scoreboard players set @a SkyblockCE_islands_april_fool 10000


##Gamerules Setup Fool
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


##Islands Choices Setup Fool
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":" - "},{"translate":"skyblock_classic_edition.skyblock_setup.version","bold":true},{"text":" 9999991.9.999999 Poisonous Potato Islands Update - JE-24w14potato-Skyblock_Classic_Edition:1.0.0Fools","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.for_text","bold":true},{"text":" Minecraft Java Edition: ","bold":true},{"text":"24w14potato - Poisonous Potato Update","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_fools","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" "},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_fools.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible","italic":true},{"text":" "},{"text":"4.0.0","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.to_text","italic":true},{"text":" "},{"text":"5.1.0","italic":true},{"text":" "},{"translate":"skyblock_classic_edition.skyblock_setup.legacy_version.compatible.datapack","italic":true}]
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
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/tag/JE-April_Fool_2024a"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Fool
scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game


##Teleports Setup Fool
execute as @a[scores={SkyblockCE_tp_fool=1}] run effect give @a minecraft:regeneration 64 250 true
execute in minecraft:potato run tp @a[scores={SkyblockCE_tp_fool=1}] 0 64 0 0 90