#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##START GENERATED FUNCTION
execute as @a[scores={SkyblockCE_potato=1..}] run scoreboard players set @a SkyblockCE_tp 0
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run kill @e[type=!minecraft:player]
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2..5}] run difficulty hard
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run gamerule commandBlockOutput false
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run gamerule doImmediateRespawn true
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat"}
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run title @a subtitle {"translate":"skyblock_classic_edition.loading.subtitle.chat"}
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run title @a times 30 200 20
execute in minecraft:potato as @a[scores={SkyblockCE_potato=2}] run gamerule announceAdvancements false


##Potato World


#Classic Potato
execute in minecraft:potato as @a[scores={SkyblockCE_potato=5}] run execute in minecraft:potato run tp @a -192 64 -112
execute in minecraft:potato as @a[scores={SkyblockCE_potato=40}] run place template skyblock:classic_potato -192 64 -112
execute in minecraft:potato as @a[scores={SkyblockCE_potato=43}] run setblock 1 66 -3 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:['{"text":"This"}','{"text":"is"}','{"text":"a"}','{"text":"secret!!!"}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"Skyblock"}','{"text":"Classic Edition"}','{"text":"---------------"}','{"text":"1.20.5"}']}} replace
execute in minecraft:potato as @a[scores={SkyblockCE_potato=45}] run setblock 1 66 -2 minecraft:air


#Classic Desert Potato
execute in minecraft:potato as @a[scores={SkyblockCE_potato=40}] run execute in minecraft:potato run tp @a -122 63 -112
execute in minecraft:potato as @a[scores={SkyblockCE_potato=50}] run place template skyblock:classic_desert_potato -122 63 -112


##FINAL GENERATED FUNCTION
#execute as @a[scores={SkyblockCE_potato=150..}] run scoreboard objectives add SkyblockCE_structures_id dummy
execute as @a[scores={SkyblockCE_potato=151}] run #spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_potato=151}] run weather clear 1000s
execute as @a[scores={SkyblockCE_potato=151}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_potato=151}] run scoreboard objectives setdisplay list kills
execute as @a[scores={SkyblockCE_potato=706}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={SkyblockCE_potato=706}] run title @a subtitle {"text":"Potato Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={SkyblockCE_potato=706}] run title @a times 30 100 30
execute as @a[scores={SkyblockCE_potato=705..707}] run gamerule announceAdvancements true
execute as @a[scores={SkyblockCE_potato=705..707}] run gamerule doDaylightCycle true
execute as @a[scores={SkyblockCE_potato=705..707}] run gamerule doWeatherCycle true
execute as @a[scores={SkyblockCE_potato=705..707}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_potato=710}] run time set 0
execute as @a[scores={SkyblockCE_potato=710}] run advancement revoke @a everything
execute as @a[scores={SkyblockCE_potato=720}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={SkyblockCE_potato=721}] run gamemode survival @a
execute as @a[scores={SkyblockCE_potato=730}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2