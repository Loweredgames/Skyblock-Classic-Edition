#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Function
function test_skyblock:legacy_version
function test_skyblock:test/fix_end
function test_skyblock:test/refactoring_scoreboard


##Setup
#tellraw @a [{"translate":"skyblock_classic_edition.folder.test"}]


##Scoreboard
scoreboard objectives add refactoring_scoreboard dummy
scoreboard players add @a refactoring_scoreboard 1
scoreboard players add @a legacy 1


##Scoreboard Reset
execute as @a[scores={fix_end=2000000..}] run scoreboard players set @a fix_end 10000
execute as @a[scores={refactoring_scoreboard=2000000..}] run scoreboard players set @a refactoring_scoreboard 10000