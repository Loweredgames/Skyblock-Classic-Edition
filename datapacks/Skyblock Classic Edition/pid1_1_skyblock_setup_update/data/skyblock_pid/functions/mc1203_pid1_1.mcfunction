#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update PID 1_1


##Scoreboard Start PID 1_1
execute as @a[scores={1.20.3_PID_1_1=5..100}] run gamemode spectator @a
execute as @a[scores={1.20.3_PID_1_1=5}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.3_PID_1_1=5..1000}] run effect give @a blindness 5 0 true
execute as @a[scores={1.20.3_PID_1_1=5..1000}] run effect give @a night_vision 5 0 true
execute as @a[scores={1.20.3_PID_1_1=1000}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.3_PID_1_1=1005}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.3_PID_1_1=5..1000}] run summon minecraft:area_effect_cloud ~ ~1 ~


##Skyblock PID 1_1 Reset LOOP
execute as @a[scores={1.20.3_PID_1_1=2000000..}] run scoreboard players set @a 1.20.3_PID_1_1 10000


###PID 1_1 - 1.20.3 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_1=100}] run say Aspettare la 1.20.3 vedere se aggiungono il loot nei pot (in caso aggiungere qui)


##Final Function PID 1_1
execute as @a[scores={1.20.3_PID_1_1=1001}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={1.20.3_PID_1_1=1001}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={1.20.3_PID_1_1=1001}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.3_PID_1_1=1005}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.3_PID_1_1=1011}] run gamemode survival @a