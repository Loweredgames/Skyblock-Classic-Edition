#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function Setup Test
function skyblock_legacy:legacy_remove/multiplayer_legacy
function skyblock_legacy:legacy_remove/legacy_structures_system
function skyblock_legacy:legacy_remove/nightly_building


##Function Remove Test (DA RIMUOVERE IN FUTURO)
execute as @a[scores={fix_end=0..}] run scoreboard objectives remove fix_end
scoreboard players set @a fix_end 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock_legacy:legacy_remove/refactoring_scoreboard
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock_legacy:legacy_version


##Scoreboard Setup Test
scoreboard objectives add refactoring_scoreboard dummy
scoreboard players add @a refactoring_scoreboard 1
scoreboard players add @a SkyblockCE_legacy_version 1


##Scoreboard Reset
##AGGIUNGERE SCOREBOARD