#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##CUSTOM SETUP STRUCTURES ID (NON TOCCARE)
execute as @a[scores={SkyblockCE_structures_id_fools=30..}] run scoreboard objectives add SkyblockCE_custom_structures_fools dummy
execute as @a[scores={SkyblockCE_structures_id_fools=35..}] run scoreboard players add @a SkyblockCE_custom_structures_fools 1
scoreboard players add @a SkyblockCE_structures_id_fools 1


##CUSTOM SETUP STRUCTURES (NON TOCCARE)
execute as @a[scores={SkyblockCE_custom_structures_fools=5..105}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={SkyblockCE_custom_structures_fools=5}] run scoreboard players set @a SkyblockCE_tp_fools 0
execute as @a[scores={SkyblockCE_custom_structures_fools=5..11}] run gamemode spectator @a


##CUSTOM FINAL FUNCTION STRUCTURES GENERATED
execute as @a[scores={SkyblockCE_custom_structures_fools=1..45}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_custom_structures_fools=6}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_custom_structures_fools=6}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_custom_structures_fools=6}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_custom_structures_fools=7..40}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_custom_structures_fools=7..40}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_custom_structures_fools=7..40}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_custom_structures_fools=10}] run time set 0
execute as @a[scores={SkyblockCE_custom_structures_fools=11}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_custom_structures_fools=11}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_custom_structures_fools=20}] run gamemode survival @a
execute as @a[scores={SkyblockCE_custom_structures_fools=41}] run effect clear @a
execute as @a[scores={SkyblockCE_custom_structures_fools=41}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_custom_structures_fools=45..50}] run gamerule doImmediateRespawn false


##CUSTOM FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_structures_id_fools=2000000..}] run scoreboard players set @a SkyblockCE_structures_id_fools 10000
execute as @a[scores={SkyblockCE_custom_structures_fools=2000000..}] run scoreboard players set @a SkyblockCE_custom_structures_fools 10000