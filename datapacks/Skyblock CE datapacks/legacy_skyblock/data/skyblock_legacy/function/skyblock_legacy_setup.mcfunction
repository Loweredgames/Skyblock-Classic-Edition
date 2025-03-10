#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
function skyblock_legacy:legacy_remove/legacy_structures_system


##Function Remove Test (DA RIMUOVERE IN FUTURO)
function skyblock_legacy:legacy_version
function skyblock_legacy:legacy_remove/legacy_rebranding
function skyblock_legacy:legacy_remove/nightly_building
function skyblock_legacy:legacy_remove/refactoring_scoreboard
function skyblock_legacy:legacy_remove/multiplayer_legacy
scoreboard objectives remove fix_end


##Scoreboard Setup Test
scoreboard players add @a refactoring_scoreboard 1
scoreboard players add @a SkyOsirion_legacy_version 1


##Scoreboard Reset
##AGGIUNGERE SCOREBOARD nella 1.21.1


## Conversione per il Rebranding nella 1.21 (da rimuovere nella 1.22)
execute as @a[scores={SkyblockCE_install=-1..}] run tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.skyblock_setup.import","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @a SkyOsirion_islands 5"}},{"text":" ","color":"blue"},{"text":"[?]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.skyblock_setup.import.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},""]
execute as @a[scores={SkyOsirion_import=10..}] run scoreboard objectives remove SkyblockCE_install