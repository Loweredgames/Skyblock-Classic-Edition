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


##Setup Test
recipe give @a *


##Scoreboard Install Test
scoreboard objectives add SkyblockCE_install_test dummy
scoreboard players add @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1..}] run scoreboard players set @a SkyblockCE_install 0


##Islands Choices Setup Test
execute as @a[scores={SkyblockCE_install_test=2}] run tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"translate":"skyblock_classic_edition.skyblock_setup.welcome","bold":true},{"text":" - Dimensions Version","bold":true},{"text":":","bold":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_test_setup","italic":true},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.choose_islands","italic":true},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.large_easy","color":"dark_green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 1"}},{"text":" ","color":"dark_green"},{"text":"[?]","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.large_easy.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.default_normal","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 2"}},{"text":" ","color":"gold"},{"text":"[?]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.default_normal.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.small_hard","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 3"}},{"text":" ","color":"red"},{"text":"[?]","color":"red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.small_hard.info"}]}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.very_small_hard","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 4"}},{"text":" ","color":"dark_red"},{"text":"[?]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.very_small_hard.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.import","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyblockCE_islands 4"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.import.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c"}]
execute as @a[scores={SkyblockCE_install_test=1000..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_install_test=1}] run difficulty normal
execute as @a[scores={SkyblockCE_install_test=3}] run tellraw @a ["",{"text":"\n If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]


##Quit Game Test
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard players set @a SkyblockCE_install_test 1
execute as @a[scores={SkyblockCE_quit_game=1..}] run scoreboard objectives remove SkyblockCE_quit_game