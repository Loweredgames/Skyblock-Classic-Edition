#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##World Update and Conversion


##Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_1=1..5}] run gamemode spectator @a
execute as @a[scores={PID_1=5}] run time set 0
execute as @a[scores={PID_1=5}] run gamerule doImmediateRespawn true
execute as @a[scores={PID_1=1800}] run gamerule doImmediateRespawn false
execute as @a[scores={PID_1=1803}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
###execute as @a[scores={PID_1=1..100}] run summon minecraft:area_effect_cloud ~ ~1 ~ (cambiare dopo aver fatto conversione)


#PID Legacy Remove (RIMUOVE LA SCORE DOPO LA CONVERSIONE)
execute as @a[scores={PID_1=3000..}] run scoreboard objectives remove PID_legacy


#PID_1 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE IL COMMENTO IN SE)
execute as @a[scores={PID_1=100}] run tp @a 71 59 -489
execute as @a[scores={PID_1=100}] run setblock 73 58 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 74 57 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 75 56 -495 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run fill 74 58 -494 80 58 -494 minecraft:cut_sandstone destroy
execute as @a[scores={PID_1=100}] run fill 80 58 -493 80 58 -488 minecraft:cut_sandstone destroy
execute as @a[scores={PID_1=100}] run fill 78 58 -488 74 58 -488 minecraft:cut_sandstone destroy
execute as @a[scores={PID_1=100}] run fill 74 58 -489 74 58 -493 minecraft:cut_sandstone destroy
execute as @a[scores={PID_1=100}] run fill 77 56 -494 77 57 -494 minecraft:sand destroy
execute as @a[scores={PID_1=100}] run setblock 80 56 -491 minecraft:smooth_sandstone_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 80 57 -491 minecraft:smooth_sandstone_stairs[facing=east,half=top,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 77 56 -488 minecraft:smooth_sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 77 57 -488 minecraft:smooth_sandstone_stairs[facing=south,half=top,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 74 56 -491 minecraft:smooth_sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run setblock 74 57 -491 minecraft:smooth_sandstone_stairs[facing=west,half=top,shape=straight,waterlogged=false] destroy
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=100}] run
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_1=..1800}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_1=1801}] run time set 0
execute as @a[scores={PID_1=1801}] run gamemode survival @a
execute in minecraft:overworld at @a[scores={PID_1=800}] run tp @a 0 66 0 90 0