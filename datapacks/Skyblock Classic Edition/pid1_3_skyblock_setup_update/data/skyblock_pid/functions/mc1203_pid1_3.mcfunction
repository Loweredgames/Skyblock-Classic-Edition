#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update PID 1_3


##Scoreboard Start PID 1_3
execute as @a[scores={1.20.3_PID_1_3=1..105}] run summon minecraft:area_effect_cloud ~ ~1 ~


##Skyblock PID 1_3 Reset LOOP
execute as @a[scores={1.20.3_PID_1_3=2000000..}] run scoreboard players set @a 1.20.3_PID_1_3 100000


###PID 1_3 - 1.20.4/1.20.5 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_3=5}] run tellraw @a ["",{"text":"Unfortunately, a problem was discovered that caused when opening the world. to solve the problem just: put the items in the chests and replace the ","bold":true,"italic":true,"color":"red"},{"text":"level.dat here","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/download/1.20.4_JE-1a/fix.-.251.zip"}},{"text":" and immediately change the mode to creative when you start the world for the first time otherwise you will fall into the void. sorry again but this will be the real and last time I touch the level.dat.","bold":true,"italic":true,"color":"red"}]


##Final Function PID 1_3
execute as @a[scores={1.20.3_PID_1_3=1..501}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.3_PID_1_3=1..105}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.3_PID_1_3=1..505}] run gamemode survival @a