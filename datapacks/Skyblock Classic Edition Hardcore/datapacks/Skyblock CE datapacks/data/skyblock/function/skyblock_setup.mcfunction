#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Lock
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock_legacy_pid:legacy_pid
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/default
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/large
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:islands/small


##Function Padlock Lock
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


##Setup Lock
setblock 0 62 0 minecraft:bedrock


##Scoreboard Lock
scoreboard objectives add SkyblockCE_install dummy
scoreboard objectives add SkyblockCE_islands dummy
scoreboard objectives add SkyblockCE_tp dummy
scoreboard players add @a SkyblockCE_id 1
scoreboard players add @a SkyblockCE_install 1
scoreboard objectives add SkyblockCE_multiplayer dummy
scoreboard players add @a SkyblockCE_multiplayer 1
scoreboard objectives add SkyblockCE_multiplayer_reset dummy


##Scoreboard Reset Lock
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


##Islands Choices Lock
execute as @a[scores={SkyblockCE_install=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.install.hardcore.lock","italic":true,"color":"red"},{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"translate":"skyblock_classic_edition.install.hardcore.lock.replace_datapack","italic":true,"color":"red"}]
execute as @a[scores={SkyblockCE_install=1000..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_install=1..}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_install=1..}] run tp @a 0 0 0 0 90
execute as @a[scores={SkyblockCE_install=1}] run gamerule doDaylightCycle false
execute as @a[scores={SkyblockCE_install=1}] run gamerule doWeatherCycle false
execute as @a[scores={SkyblockCE_install=1}] run effect give @a saturation 11 255 true
execute as @a[scores={SkyblockCE_install=1}] run effect give @a blindness 61 0 false
execute as @a[scores={SkyblockCE_install=1}] run time set 0
execute as @a[scores={SkyblockCE_install=1}] run weather clear 5001s
execute as @a[scores={SkyblockCE_install=1}] run setworldspawn 0 63 0
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 points
execute as @a[scores={SkyblockCE_install=1}] run xp set @a 0 levels
execute as @a[scores={SkyblockCE_install=1}] run difficulty hard


##Quit Game Lock
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run scoreboard objectives add SkyblockCE_quit_game minecraft.custom:minecraft.leave_game
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players reset @a SkyblockCE_quit_game