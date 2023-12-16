#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update PID 1_2


##Scoreboard Start PID 1_2
execute as @a[scores={1.20.3_PID_1_2=5..300}] run gamemode spectator @a
execute as @a[scores={1.20.3_PID_1_2=5}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.3_PID_1_2=5..300}] run effect give @a blindness 5 0 true
execute as @a[scores={1.20.3_PID_1_2=5..300}] run effect give @a night_vision 5 0 true
execute as @a[scores={1.20.3_PID_1_2=300}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.3_PID_1_2=305}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.3_PID_1_2=5..300}] run summon minecraft:area_effect_cloud ~ ~1 ~


##Skyblock PID 1_2 Reset LOOP
execute as @a[scores={1.20.3_PID_1_2=2000000..}] run scoreboard players set @a 1.20.3_PID_1_2 100000


###PID 1_2 - 1.20.4 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=100}] run tp @a -252 60 -476 0 0
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=210}] run setblock -252 52 -476 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=215}] run setblock -252 52 -476 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{Count:7b,id:"minecraft:iron_nugget"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=220}] run setblock -262 57 -480 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=225}] run setblock -262 57 -480 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{Count:32b,id:"minecraft:clay_ball"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=230}] run setblock -261 53 -478 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=235}] run setblock -261 53 -478 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{Count:8b,id:"minecraft:string"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=240}] run setblock -265 47 -471 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=245}] run setblock -265 47 -471 minecraft:decorated_pot[cracked=false,facing=south,waterlogged=false]{item:{Count:12b,id:"minecraft:wheat"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=250}] run setblock -249 53 -482 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=255}] run setblock -249 53 -482 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{Count:24b,id:"minecraft:brick"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=260}] run setblock -262 57 -471 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=265}] run setblock -262 57 -471 minecraft:decorated_pot[cracked=false,facing=west,waterlogged=false]{item:{Count:1b,id:"minecraft:orange_dye"}} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=270}] run setblock -245 53 -474 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_2=275}] run setblock -245 53 -474 minecraft:decorated_pot[cracked=false,facing=north,waterlogged=false]{item:{Count:6b,id:"minecraft:blue_dye"}} replace


##Final Function PID 1_2
execute as @a[scores={1.20.3_PID_1_2=301}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={1.20.3_PID_1_2=301}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={1.20.3_PID_1_2=301}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.3_PID_1_2=305}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.3_PID_1_2=305}] run gamemode survival @a