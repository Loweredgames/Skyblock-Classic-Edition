#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (Aggiornato all'ultima versione: 1.0.0 - 5.0.0 Minecraft: 1.20.2)


##Debug Refactoring
#scoreboard objectives setdisplay sidebar refactoring_scoreboard


#Start
execute as @a[scores={refactoring_scoreboard=..20}] run scoreboard objectives add SkyblockCE_install dummy
execute as @a[scores={skyblock_small=1..}] run scoreboard objectives add SkyblockCE_small minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_small=1..}] run scoreboard players add @a SkyblockCE_small 1000
execute as @a[scores={SkyblockCE_small=1005..}] run scoreboard objectives remove skyblock_small
execute as @a[scores={skyblock_normal=1..}] run scoreboard objectives add SkyblockCE_default minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_normal=1..}] run scoreboard players add @a SkyblockCE_default 1000
execute as @a[scores={SkyblockCE_default=1005..}] run scoreboard objectives remove skyblock_normal
execute as @a[scores={skyblock_large=1..}] run scoreboard objectives add SkyblockCE_large minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_large=1..}] run scoreboard players add @a SkyblockCE_large 1000
execute as @a[scores={SkyblockCE_large=1005..}] run scoreboard objectives remove skyblock_large
execute as @a[scores={SkyblockCE_structures=1..}] run scoreboard objectives remove structure_skyblock
execute as @a[scores={SkyblockCE_islands=-2..}] run scoreboard objectives remove skyblock_island
execute as @a[scores={skyblock_ID=0..}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_id=0..}] run scoreboard objectives remove skyblock_ID
execute as @a[scores={SkyblockCE_quit_game=0..}] run scoreboard objectives remove skyblock_quit_game
execute as @a[scores={skyblock_quit_game=0..}] run scoreboard objectives remove skyblock_quit_game
execute as @a[scores={SkyblockCE_tp=0..}] run scoreboard objectives remove tp
execute as @a[scores={SkyblockCE_legacy_version=1..}] run scoreboard objectives remove legacy


#Scoreboard Remove
scoreboard objectives remove skyblock_install


#Eliminare tutto e lasciare solo questo per rimovere le scoreboard nella 1.21
execute as @a[scores={refactoring_scoreboard=900000..}] run scoreboard objectives remove refactoring_scoreboard