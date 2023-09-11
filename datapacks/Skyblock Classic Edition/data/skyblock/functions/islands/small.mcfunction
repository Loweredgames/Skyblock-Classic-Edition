#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Small (Hard)


execute as @a[scores={SkyblockCE_islands=3}] run scoreboard objectives add SkyblockCE_small minecraft.custom:minecraft.play_time
execute as @a[scores={SkyblockCE_islands=3}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nLoading...."}
execute as @a[scores={SkyblockCE_small=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_small=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_small=1..2400}] run summon minecraft:area_effect_cloud ~ ~1 ~


#Start
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run difficulty hard
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run gamerule doImmediateRespawn true
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run title @a title {"text":"Loading..."}
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run title @a subtitle {"text":"World"}
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run title @a times 20 200 20
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run gamerule announceAdvancements false


##Overworld


#Small Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run scoreboard players set @a SkyblockCE_tp 1
execute in minecraft:overworld as @a[scores={SkyblockCE_small=1}] run fill -7 80 -12 7 55 5 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_small=3}] run say place template skyblock:small_classic -1 62 -3
execute in minecraft:overworld as @a[scores={SkyblockCE_small=10}] run setblock 1 66 0 birch_wall_sign[facing=south,waterlogged=false]{Color:"white",GlowingText:1b,Text1:'{"text":"Skyblock","color":"white"}',Text2:'{"text":"Classic Edition","color":"white"}',Text3:'{"text":"---------------","color":"white"}',Text4:'{"text":"1.18.2","color":"white"}'} replace
execute in minecraft:overworld as @a[scores={SkyblockCE_small=35}] run setblock 0 62 1 minecraft:dirt destroy
execute in minecraft:overworld as @a[scores={SkyblockCE_small=35}] run setblock 1 66 1 minecraft:air


#Small Classic Desert
execute in minecraft:overworld as @a[scores={SkyblockCE_small=40}] run scoreboard players set @a SkyblockCE_tp 2
execute in minecraft:overworld as @a[scores={SkyblockCE_small=40}] run fill 75 80 11 61 55 -9 minecraft:air
execute in minecraft:overworld as @a[scores={SkyblockCE_small=41}] run say place template skyblock:small_classic_desert 66 60 -4


##The Nether


#Small Nether Classic
execute in minecraft:overworld as @a[scores={SkyblockCE_small=57}] run scoreboard players set @a SkyblockCE_tp 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_small=100}] run fill 17 65 43 -12 50 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_small=100}] run fill 16 73 -53 -3 49 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={SkyblockCE_small=105}] run say place template skyblock:nether_classic 2 50 3


#Small Nether Classic Bastion
execute as @a[scores={SkyblockCE_small=120}] run scoreboard players set @a SkyblockCE_tp 4
execute in minecraft:the_nether as @a[scores={SkyblockCE_small=121}] run say place template skyblock:nether_classic_bastion 4 55 33


#Nether Classic Forest
execute as @a[scores={SkyblockCE_small=130}] run scoreboard players set @a SkyblockCE_tp 5
execute in minecraft:the_nether as @a[scores={SkyblockCE_small=131}] run say place template skyblock:nether_classic_forest -2 50 -50


##The End
## ??? ##


##Final Function
execute as @a[scores={SkyblockCE_small=150}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={SkyblockCE_small=250}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={SkyblockCE_small=1351}] run spawnpoint @a 0 65 1
execute as @a[scores={SkyblockCE_small=1351}] run weather clear 1000
execute as @a[scores={SkyblockCE_small=1351}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_small=1351}] run scoreboard objectives setdisplay list kills
execute as @a[scores={SkyblockCE_small=1355}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_small=1756}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_small=1756}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_small=1756}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_small=1757..}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_small=1757..}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_small=1757..}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_small=1757..}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_small=1757}] run time set 0
execute as @a[scores={SkyblockCE_small=1780}] run gamemode survival @a
execute as @a[scores={SkyblockCE_small=1780}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_small=1780}] run execute in minecraft:overworld run tp @p 0 66 1 90 0
execute as @a[scores={SkyblockCE_small=1781}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2