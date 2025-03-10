#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Small (Hard)


execute as @a[scores={SkyOsirion_islands=3}] run scoreboard objectives add SkyOsirion_small minecraft.custom:minecraft.play_time
execute as @a[scores={SkyOsirion_islands=3}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyOsirion_small=1..}] run scoreboard players set @a SkyOsirion_install -2
execute as @a[scores={SkyOsirion_small=1..}] run scoreboard players set @a SkyOsirion_install_test -2
execute as @a[scores={SkyOsirion_small=1..}] run scoreboard players set @a SkyOsirion_islands -2
execute as @a[scores={SkyOsirion_small=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1..5}] run difficulty hard
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run gamerule announceAdvancements false


##Overworld


#Small Classic
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run scoreboard players set @a SkyOsirion_tp 1
execute in minecraft:overworld as @a[scores={SkyOsirion_small=1}] run fill 7 110 -13 -7 -60 5 minecraft:air
execute in minecraft:overworld as @a[scores={SkyOsirion_small=3}] run place template skyblock:small_classic -1 62 -3
execute in minecraft:overworld as @a[scores={SkyOsirion_small=35}] run setblock 0 62 1 minecraft:dirt destroy
execute in minecraft:overworld as @a[scores={SkyOsirion_small=35}] run setblock 1 66 1 minecraft:air


#Small Classic Desert
execute in minecraft:overworld as @a[scores={SkyOsirion_small=40}] run scoreboard players set @a SkyOsirion_tp 2
execute in minecraft:overworld as @a[scores={SkyOsirion_small=40}] run fill 58 110 7 79 -60 -18 minecraft:air
execute in minecraft:overworld as @a[scores={SkyOsirion_small=41}] run place template skyblock:small_classic_desert 66 60 -4


#Mushroom House
execute in minecraft:overworld as @a[scores={SkyOsirion_small=50}] run scoreboard players set @a SkyOsirion_tp 6
execute in minecraft:overworld as @a[scores={SkyOsirion_small=100}] run fill -3 110 999 28 -7 1026 minecraft:air
execute in minecraft:overworld as @a[scores={SkyOsirion_small=105}] run place template skyblock:mushroom_house 0 61 1000


##The Nether


#Small Nether Classic
execute in minecraft:overworld as @a[scores={SkyOsirion_small=130}] run scoreboard players set @a SkyOsirion_tp 3
execute in minecraft:the_nether as @a[scores={SkyOsirion_small=150}] run fill 17 1 43 -12 255 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyOsirion_small=155}] run place template skyblock:nether_classic 2 50 3


#Small Nether Classic Bastion
execute as @a[scores={SkyOsirion_small=200}] run scoreboard players set @a SkyOsirion_tp 4
execute in minecraft:the_nether as @a[scores={SkyOsirion_small=250}] run place template skyblock:nether_classic_bastion 4 55 33


#Nether Classic Forest
execute as @a[scores={SkyOsirion_small=300}] run scoreboard players set @a SkyOsirion_tp 5
execute in minecraft:the_nether as @a[scores={SkyOsirion_small=350}] run fill -4 1 -52 11 255 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyOsirion_small=355}] run place template skyblock:nether_classic_forest -2 50 -50


##The End (???)


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyOsirion_small=400}] run scoreboard players set @a SkyOsirion_tp 1
execute as @a[scores={SkyOsirion_small=450..}] run scoreboard objectives add SkyOsirion_structures_id dummy
execute as @a[scores={SkyOsirion_small=500}] run spawnpoint @a 0 65 1
execute as @a[scores={SkyOsirion_small=500}] run weather clear 1000s
execute as @a[scores={SkyOsirion_small=500}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyOsirion_small=500}] run scoreboard objectives setdisplay list kills