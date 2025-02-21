#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Very Small (Extreme)


execute as @a[scores={SkyblockCE_islands=4}] run scoreboard objectives add SkyblockCE_very_small minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=4}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyblockCE_very_small=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_very_small=1..}] run scoreboard players set @a SkyblockCE_install_test -2
execute as @a[scores={SkyblockCE_very_small=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_very_small=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1..5}] run difficulty hard
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run gamerule announceAdvancements false


##Overworld


#Very Small Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run scoreboard players set @a SkyblockCE_tp 1
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=1}] run fill 7 110 -13 -7 -60 5 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=3}] run place template skyblock:very_small_classic -1 62 -1


#Very Small Classic Desert
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=40}] run scoreboard players set @a SkyblockCE_tp 2
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=40}] run fill 58 110 7 79 -60 -18 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=41}] run place template skyblock:very_small_classic_desert 66 60 -4


#Mushroom House
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=50}] run scoreboard players set @a SkyblockCE_tp 6
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=100}] run fill -3 110 999 28 -7 1026 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=105}] run place template skyblock:mushroom_house 0 61 1000


##The Nether


#Very Small Nether
execute in minecraft:overworld as @a[scores={SkyblockCE_very_small=130}] run scoreboard players set @a SkyblockCE_tp 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_very_small=135}] run fill 17 1 43 -12 255 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_very_small=140}] run place template skyblock:nether_very_small 2 50 3


##The End (???)


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyblockCE_very_small=150}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={SkyblockCE_very_small=150..}] run scoreboard objectives add SkyblockCE_structures_id dummy
execute as @a[scores={SkyblockCE_very_small=300}] run spawnpoint @a -1 65 0
execute as @a[scores={SkyblockCE_very_small=300}] run weather clear 1000s
execute as @a[scores={SkyblockCE_very_small=300}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_very_small=300}] run scoreboard objectives setdisplay list kills