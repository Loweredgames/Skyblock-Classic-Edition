#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
function skyblock:structures_test/generated_biome
function skyblock:structures_test/generated_test_structures
function skyblock:structures_test/warning_message/fix_custom_world
function skyblock:structures_test/warning_message/warning_level.dat
#function skyblock:test/ (da fare in futuro)


##Scoreboard Install Test
scoreboard objectives add SkyblockCE_install_test dummy
scoreboard players add @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1..}] run scoreboard players set @a SkyblockCE_install 0


##Islands Choices Setup Test
execute as @a[scores={SkyblockCE_install_test=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":" - Dimensions Version","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"text":"You are currently using another version for internal testing and it is used when the custom world is not compatible with the main version. There may be several serious issues and critical bugs: this version contains an empty world with only one biome (snowy taiga), level.dat and level.dat_old store only one biome and contain pregenerated test structures, if you want to switch to a normal world with many biomes and structures generated with vanilla methods you need to replace the datapack with the compatible level.dat or reinstall the map again with a newer version. This version will be replaced with the custom world in the development of the release. It is recommended not to generate the world but to wait for the release.","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.large_easy","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.large_easy.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_normal","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_normal.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.small_hard","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.small_hard.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"▶Import World","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 4"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Allows you to import a world other than the Skyblock Classic Edition, which can be another Skyblock. adds all the necessary scoreboards without damaging the world and pre-existing structures, also creates a small glass platform if there is nothing. USE WITH CAUTION: THE FUNCTION DOES NOT GENERATE ANY ISLAND, MAKING THE MAP ITSELF AND THE RESOURCES IMPOSSIBLE. IF NO BIOME/STRUCTURE IS GENERATED, IT IS A BUG: MAKE A BACKUP, PUT THE ITEMS IN A CHEST AND REPLACE THE LEVEL.DAT WITH THE OLD ONE."}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c"}]
execute as @a[scores={SkyblockCE_install_test=1000..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1}] run difficulty normal
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"text":"\n If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Test
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game