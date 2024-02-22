#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update SUBPID 1_3


##Scoreboard Start SUBPID 1_3
execute as @a[scores={1.20.3_PID_1_3=1..105}] run summon minecraft:area_effect_cloud ~ ~1 ~


##SKYBLOCK SUBPID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={1.20.3_PID_1_3=5}] run tellraw @s [{"translate":"skyblock_classic_edition.versions_id.warning_update.on","color":"#d5d5d5","italic":true},{"text":"1.20.3_PID_1_3"}]


##SUBPID 1_3 - 1.20.4/1.20.5 (SPOSTARE "SUBPID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld


execute in minecraft:overworld as @a[scores={1.20.3_PID_1_3=5}] run tellraw @a ["",{"text":"FARE il popup","bold":true,"italic":true,"color":"red"}]


##Final Function SUBPID 1_3
execute as @a[scores={1.20.3_PID_1_3=1..501}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.3_PID_1_3=1..105}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.3_PID_1_3=1..505}] run gamemode survival @a


##Skyblock SUBPID 1_3 Reset LOOP
execute as @a[scores={1.20.3_PID_1_3=2000000..}] run scoreboard players set @a 1.20.3_PID_1_3 100000