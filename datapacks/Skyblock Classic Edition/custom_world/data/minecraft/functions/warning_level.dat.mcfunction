#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##WARNING LEVEL_DAT SETUP
scoreboard objectives add SkyblockCE_level_dat dummy
scoreboard players add @a SkyblockCE_level_dat 1


##WARNING LEVEL_DAT LOOP MESSAGE
execute as @a[scores={SkyblockCE_level_dat=200}] run tellraw @a ["",{"text":"???","bold":true,"color":"red"}]
execute as @a[scores={SkyblockCE_level_dat=900000..}] run scoreboard objectives remove SkyblockCE_level_dat