#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock Minecraft (April Fools Edition 2025)
execute as @a[scores={SkyblockCE_islands_fools=1}] run scoreboard objectives add SkyblockCE_april2025 minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands_fools=1}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}
execute as @a[scores={SkyblockCE_april2025=1..}] run scoreboard players set @a SkyblockCE_install_fools -1
execute as @a[scores={SkyblockCE_april2025=1..}] run scoreboard players set @a SkyblockCE_islands_fools -1
execute as @a[scores={SkyblockCE_april2025=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~
scoreboard players add @a SkyblockCE_april2025 1


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1..5}] run difficulty normal
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=1}] run gamerule announceAdvancements false


##APRIL FOOL GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=100}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute in minecraft:overworld as @a[scores={SkyblockCE_april2025=100}] run fill 1 62 1 -1 62 -1 minecraft:glass replace


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyblockCE_april2025=200}] run scoreboard players set @a SkyblockCE_tp_fools 1
execute as @a[scores={SkyblockCE_april2025=250..}] run scoreboard objectives remove 1.21.4_PVN_FOOLS2025
execute as @a[scores={SkyblockCE_april2025=255..}] run scoreboard objectives add SkyblockCE_structures_id_fools dummy
execute as @a[scores={SkyblockCE_april2025=400}] run spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_april2025=400}] run weather clear 1000s
execute as @a[scores={SkyblockCE_april2025=400}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_april2025=400}] run scoreboard objectives setdisplay list kills