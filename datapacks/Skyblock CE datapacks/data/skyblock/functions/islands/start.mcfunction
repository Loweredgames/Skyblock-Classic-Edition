#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##April Fools Setup
execute as @a[scores={SkyblockCE_islands=1}] run scoreboard objectives add SkyblockCE_april_fools minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}
execute as @a[scores={SkyblockCE_april_fools=1..}] run scoreboard objectives add SkyblockCE_structures_id dummy
execute as @a[scores={SkyblockCE_april_fools=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_april_fools=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_april_fools=1}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_april_fools=1..24000}] run summon minecraft:area_effect_cloud ~ ~1 ~


##April Fools Start
scoreboard players add @a SkyblockCE_potato 1
execute as @a[scores={SkyblockCE_april_fools=5}] run scoreboard objectives add SkyblockCE_potato dummy


##Function April Fools
function skyblock:islands/potato_2024/potato