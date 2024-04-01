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
execute in minecraft:potato as @a[scores={SkyblockCE_potato=5}] run execute in minecraft:potato run tp @a -4 61 -6
execute in minecraft:potato as @a[scores={SkyblockCE_potato=10}] run fill -7 80 -12 7 55 5 minecraft:air
execute in minecraft:potato as @a[scores={SkyblockCE_potato=11}] run fill 75 80 11 61 55 -9 minecraft:air
execute in minecraft:potato as @a[scores={SkyblockCE_potato=22}] run place template skyblock:classic_potato -4 61 -6
execute in minecraft:potato as @a[scores={SkyblockCE_potato=33}] run setblock 1 66 -3 birch_wall_sign[facing=south,waterlogged=false]{back_text:{messages:['{"text":"This"}','{"text":"is"}','{"text":"a"}','{"text":"secret!!!"}']},front_text:{color:"white",has_glowing_text:1b,messages:['{"text":"Skyblock"}','{"text":"Classic Edition"}','{"text":"---------------"}','{"text":"1.20.5"}']}} replace
execute in minecraft:potato as @a[scores={SkyblockCE_potato=35}] run setblock 1 66 -2 minecraft:air


#Classic Desert Potato
execute in minecraft:potato as @a[scores={SkyblockCE_potato=40}] run execute in minecraft:potato run tp @a 66 61 -4
execute in minecraft:potato as @a[scores={SkyblockCE_potato=45}] run fill 58 56 7 79 74 -18 minecraft:air
execute in minecraft:potato as @a[scores={SkyblockCE_potato=50}] run place template skyblock:classic_desert_potato 66 61 -4


##FINAL GENERATED FUNCTION
execute as @a[scores={SkyblockCE_potato=150..}] run scoreboard objectives add SkyblockCE_structures_id dummy
execute as @a[scores={SkyblockCE_potato=151}] run spawnpoint @a 0 65 0
execute as @a[scores={SkyblockCE_potato=151}] run weather clear 1000s
execute as @a[scores={SkyblockCE_potato=151}] run scoreboard objectives add kills deathCount
execute as @a[scores={SkyblockCE_potato=151}] run scoreboard objectives setdisplay list kills