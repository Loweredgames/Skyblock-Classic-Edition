#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (rimuovere completamente nella 1.22)
execute as @a[scores={refactoring_scoreboard=1..}] run scoreboard objectives remove refactoring_scoreboard
