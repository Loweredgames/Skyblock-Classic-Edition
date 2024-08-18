#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
function skyblock:structures_test/generated_biome
function skyblock:structures_test/generated_structures
function skyblock:structures_test/version_psn
function skyblock:structures_test/warning_message/fix_custom_world
function skyblock:structures_test/warning_message/warning_level.dat
#function skyblock:test/


##Scoreboard Install Test
scoreboard objectives add SkyblockCE_install_test dummy
scoreboard players add @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1..}] run scoreboard players set @a SkyblockCE_install 0


##Islands Choices Setup Test
execute as @a[scores={SkyblockCE_install_test=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"text":"You are currently using a version still in development and there may be several issues: this version contains an empty world with only one biome (the snow taiga), the level.dat and level.dat_old only stores one biome, if you want to switch to a world with many biomes you need to reinstall the map again. this version will be replaced with the custom world eventually.","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_normal","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_normal.info"}]}}]
execute as @a[scores={SkyblockCE_install_test=1000..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1}] run difficulty normal
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"text":"\n If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Test
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game