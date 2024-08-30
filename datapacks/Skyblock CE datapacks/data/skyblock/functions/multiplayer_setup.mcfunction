#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##MULTIPLAYER SETUP FOOLS
execute store result score SkyblockCE_PlayerOnline SkyblockCE_multiplayer if entity @a
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 1 run scoreboard players set @a SkyblockCE_multiplayer_reset 1
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 2.. run scoreboard players set @a SkyblockCE_multiplayer_reset -1


##MULTIPLAYER RESET FOOLS (RESETTA LE SCOREBOARD E ALTRO)
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run tellraw @a ["",{"text":"WARNING: multiplayer does not work in this version!!!","bold":true,"color":"red"}]