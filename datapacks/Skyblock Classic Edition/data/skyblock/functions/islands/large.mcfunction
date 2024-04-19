#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Large (Easy)


execute as @a[scores={SkyblockCE_islands=1}] run scoreboard objectives add SkyblockCE_large minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=1}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyblockCE_large=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_large=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_large=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~


##START GENERATED FUNCTION
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1..5}] run difficulty easy
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run gamerule announceAdvancements false


##Overworld


#Large Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run scoreboard players set @a SkyblockCE_tp 1
execute in minecraft:overworld as @a[scores={SkyblockCE_large=1}] run fill 7 110 -13 -7 -60 5 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_large=20}] run place template skyblock:large_classic -5 45 -5
execute in minecraft:overworld as @a[scores={SkyblockCE_large=33}] run setblock -1 68 -1 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:['{"text":"This"}','{"text":"is"}','{"text":"a"}','{"text":"secret!!!"}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"Skyblock"}','{"text":"Classic Edition"}','{"text":"---------------"}','{"text":"1.20.5"}']}} replace
execute in minecraft:overworld as @a[scores={SkyblockCE_large=35}] run setblock -1 68 0 minecraft:air


#Large Classic Desert
execute in minecraft:overworld as @a[scores={SkyblockCE_large=40}] run scoreboard players set @a SkyblockCE_tp 2
execute in minecraft:overworld as @a[scores={SkyblockCE_large=40}] run fill 58 110 7 79 -60 -18 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_large=50}] run place template skyblock:large_classic_desert 61 54 -7


#Mushroom House
execute in minecraft:overworld as @a[scores={SkyblockCE_large=55}] run scoreboard players set @a SkyblockCE_tp 6
execute in minecraft:overworld as @a[scores={SkyblockCE_large=50}] run fill -3 110 999 28 -7 1026 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_large=60}] run place template skyblock:mushroom_house 0 61 1000


##The Nether


#Large Nether Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_large=80}] run scoreboard players set @a SkyblockCE_tp 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_large=100}] run fill 17 1 43 -12 255 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_large=105}] run place template skyblock:nether_classic 2 50 3


#Large Nether Classic Bastion
execute as @a[scores={SkyblockCE_large=120}] run scoreboard players set @a SkyblockCE_tp 4
execute in minecraft:the_nether as @a[scores={SkyblockCE_large=115}] run place structure minecraft:bastion_remnant -4 55 80

#Large Nether Classic Forest
execute as @a[scores={SkyblockCE_large=130}] run scoreboard players set @a SkyblockCE_tp 5
execute in minecraft:the_nether as @a[scores={SkyblockCE_large=125}] run fill -4 1 -52 11 255 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_large=131}] run place template skyblock:nether_classic_forest -2 50 -50


##The End (???)


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyblockCE_large=150}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={SkyblockCE_large=250..}] run scoreboard objectives add SkyblockCE_structures_id dummy
execute as @a[scores={SkyblockCE_large=1351}] run spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_large=1351}] run weather clear 1000s
execute as @a[scores={SkyblockCE_large=1351}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_large=1351}] run scoreboard objectives setdisplay list kills