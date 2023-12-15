#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Default (Normal)


execute as @a[scores={SkyblockCE_islands=2}] run scoreboard objectives add SkyblockCE_default minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=2}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyblockCE_default=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_default=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_default=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~


#Start
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1..5}] run difficulty normal
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run title @a times 30 200 20
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run gamerule announceAdvancements false


##Overworld


#Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run scoreboard players set @a SkyblockCE_tp 1
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run fill -7 80 -12 7 55 5 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_default=1}] run fill 75 80 11 61 55 -9 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_default=20}] run place template skyblock:classic -4 61 -6
execute in minecraft:overworld as @a[scores={SkyblockCE_default=33}] run setblock 1 66 -3 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:['{"text":"This"}','{"text":"is"}','{"text":"a"}','{"text":"secret!!!"}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"Skyblock"}','{"text":"Classic Edition"}','{"text":"---------------"}','{"text":"1.20.4"}']}} replace
execute in minecraft:overworld as @a[scores={SkyblockCE_default=35}] run setblock 1 66 -2 minecraft:air


#Classic Desert
execute in minecraft:overworld as @a[scores={SkyblockCE_default=40}] run scoreboard players set @a SkyblockCE_tp 2
execute in minecraft:overworld as @a[scores={SkyblockCE_default=40}] run fill 58 56 7 79 74 -18 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_default=50}] run place template skyblock:classic_desert 66 61 -4


##The Nether


#Nether Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_default=57}] run scoreboard players set @a SkyblockCE_tp 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_default=100}] run fill 17 65 43 -12 50 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_default=100}] run fill 16 73 -53 -3 49 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_default=105}] run place template skyblock:nether_classic 2 50 3


#Nether Classic Bastion
execute as @a[scores={SkyblockCE_default=120}] run scoreboard players set @a SkyblockCE_tp 4
execute in minecraft:the_nether as @a[scores={SkyblockCE_default=121}] run place template skyblock:nether_classic_bastion 4 55 33


#Nether Classic Forest
execute as @a[scores={SkyblockCE_default=130}] run scoreboard players set @a SkyblockCE_tp 5
execute in minecraft:the_nether as @a[scores={SkyblockCE_default=131}] run place template skyblock:nether_classic_forest -2 50 -50


#The End
## ??? ##


##Final Function
execute as @a[scores={SkyblockCE_default=150}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={SkyblockCE_default=250}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={SkyblockCE_default=1351}] run spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_default=1351}] run weather clear 1000s
execute as @a[scores={SkyblockCE_default=1351}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_default=1351}] run scoreboard objectives setdisplay list kills
execute as @a[scores={SkyblockCE_default=1355}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_default=1356}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_default=1356}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_default=1356}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_default=1357..}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_default=1357..}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_default=1357..}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_default=1357..}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_default=1357}] run time set 0
execute as @a[scores={SkyblockCE_default=1360}] run gamemode survival @a
execute as @a[scores={SkyblockCE_default=1360}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_default=1360}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_default=1361}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={SkyblockCE_default=1360..2400}] run clear @a written_book{tag:generated_book}