#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##WARNING LEVEL_DAT SETUP
scoreboard objectives add SkyblockCE_level_dat dummy
scoreboard players add @a SkyblockCE_level_dat 1


##WARNING LEVEL_DAT LOOP MESSAGE
execute as @a[scores={SkyblockCE_level_dat=50005}] run tellraw @a [{"translate":"skyblock_classic_edition.warning_level.dat.issues","color":"red","italic":true},{"translate":"skyblock_classic_edition.warning_level.dat.download","color":"red","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/raw/main/.worlds/.worlds-level.dat/Level.dat.zip"}},{"translate":"skyblock_classic_edition.warning_level.dat.copy_paste","color":"red","italic":true},{"text":"/scoreboard objectives add fix_custom_world dummy","underlined":true,"clickEvent":{"action":"copy_to_clipboard","value":"/scoreboard objectives add fix_custom_world dummy"}},{"translate":"skyblock_classic_edition.warning_level.dat.end","color":"red","italic":true}]
execute as @a[scores={SkyblockCE_level_dat=900000005..}] run scoreboard objectives remove SkyblockCE_level_dat