#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Legacy Setup (Aggiornato all'ultima versione: 2.0.0 - 5.0.0 Minecraft: 1.20.1) Ricordasi di aggiornare "legacy_version", aggiungendo le cose della convesione (il libro,il portale bloccato, ecc.) per le versioni vecchie e incompatibili.
#scoreboard objectives setdisplay sidebar SkyblockCE_legacy_version
execute as @a[scores={SkyblockCE_legacy_version=1..1050}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_legacy_version=0..1001}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_legacy_version=10..55}] run tellraw @a {"translate":"skyblock_classic_edition.legacy_version.loading"}
execute as @a[scores={SkyblockCE_legacy_version=5..}] run scoreboard objectives add SkyblockCE_default minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_legacy_version=..55}] run scoreboard players set @a SkyblockCE_default 2400
execute as @a[scores={SkyblockCE_legacy_version=5..}] run scoreboard objectives remove skyblock
execute as @a[scores={SkyblockCE_legacy_version=6}] run setblock 0 -2 0 minecraft:crying_obsidian keep
execute as @a[scores={SkyblockCE_legacy_version=6}] run effect give @a minecraft:resistance 11 250 true
execute as @a[scores={SkyblockCE_legacy_version=25}] run scoreboard players set @a SkyblockCE_install -1
execute as @a[scores={SkyblockCE_legacy_version=25}] run scoreboard players set @a SkyblockCE_islands -1
execute as @a[scores={SkyblockCE_legacy_version=26..}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_legacy_version=26..}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_legacy_version=27}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_legacy_version=27}] run scoreboard objectives setdisplay list kills
execute as @a[scores={SkyblockCE_legacy_version=50}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_legacy_version=51}] run fill 0 -1 0 0 7 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_legacy_version=52}] run give @p filled_map{map:0} 1
execute as @a[scores={SkyblockCE_legacy_version=100..}] run scoreboard objectives add PID_dummy dummy
execute as @a[scores={SkyblockCE_legacy_version=100..}] run scoreboard players set @a PID_dummy 1
execute as @a[scores={SkyblockCE_legacy_version=..2000}] run scoreboard players set @a SkyblockCE_structures 1
execute as @a[scores={SkyblockCE_legacy_version=2000..}] run effect give @a minecraft:slow_falling 31 0 false
execute as @a[scores={SkyblockCE_legacy_version=2000}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_legacy_version=5005..}] run scoreboard objectives remove SkyblockCE_legacy_version
#execute as @a[scores={SkyblockCE_legacy_version=1010}] run gamemode survival @a
#execute as @a[scores={SkyblockCE_legacy_version=1015}] run tp @a 0 1 0 0 0


##PID DUMMY
execute as @a[scores={PID_dummy=1..}] run scoreboard players add @a PID_legacy 1
execute as @a[scores={PID_legacy=805..}] run scoreboard objectives remove PID_dummy