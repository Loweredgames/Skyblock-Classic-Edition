#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update PID 1_1


##Scoreboard Start PID 1_1
execute as @a[scores={1.20.3_PID_1_1=5..100}] run gamemode spectator @a
execute as @a[scores={1.20.3_PID_1_1=5}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.3_PID_1_1=5..300}] run effect give @a blindness 5 0 true
execute as @a[scores={1.20.3_PID_1_1=5..300}] run effect give @a night_vision 5 0 true
execute as @a[scores={1.20.3_PID_1_1=300}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.3_PID_1_1=305}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.3_PID_1_1=5..300}] run summon minecraft:area_effect_cloud ~ ~1 ~


##Skyblock PID 1_1 Reset LOOP
execute as @a[scores={1.20.3_PID_1_1=2000000..}] run scoreboard players set @a 1.20.3_PID_1_1 10000


###PID 1_1 - 1.20.4 (SPOSTARE "PID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_1=100}] run tp @a 722 50 709 0 0
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_1=105}] run setblock 722 49 708 minecraft:air replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_1=110}] run setblock 722 49 708 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:3b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:4b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:5b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:10b,id:"minecraft:shulker_shell"},{Count:1b,Slot:11b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:12b,id:"minecraft:eye_armor_trim_smithing_template"},{Count:1b,Slot:13b,id:"minecraft:elytra",tag:{Damage:0}},{Count:1b,Slot:14b,id:"minecraft:spire_armor_trim_smithing_template"},{Count:1b,Slot:15b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:16b,id:"minecraft:shulker_shell"},{Count:1b,Slot:21b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:22b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:23b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:26b,id:"minecraft:written_book",tag:{author:"for you",generation:3,pages:['{"italic":true,"text":"10411611611211558474797114991041051181014611111410347100101116971051081154710811111511645109101109111114105101115955048494949494956"}'],resolved:1b,title:"Lost Memories"}}]} replace
execute in minecraft:overworld as @a[scores={1.20.3_PID_1_1=120}] run setblock 722 49 709 minecraft:oak_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"I\'m sorry but"}','{"text":"The End City"}','{"text":"is broken :("}','{"text":""}']},is_waxed:0b} destroy


##Final Function PID 1_1
execute as @a[scores={1.20.3_PID_1_1=301}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={1.20.3_PID_1_1=301}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={1.20.3_PID_1_1=301}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.3_PID_1_1=305}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.3_PID_1_1=310}] run gamemode survival @a