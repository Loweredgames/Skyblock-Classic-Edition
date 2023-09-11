#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


###World Update and Conversion


##Setup Version SkyblockCE_ID (CAMBIARE LA SCORE IN "SkyblockCE_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={SkyblockCE_id=500}] run scoreboard players set @a PID_OLD -100


##Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_OLD=5..100}] run gamemode spectator @a
execute as @a[scores={PID_OLD=5}] run time set 0
execute as @a[scores={PID_OLD=5}] run gamerule doImmediateRespawn true
execute as @a[scores={PID_OLD=5..300}] run effect give @a blindness 5 0 true
execute as @a[scores={PID_OLD=5..300}] run effect give @a night_vision 6 0 true
execute as @a[scores={PID_OLD=410}] run gamerule doImmediateRespawn false
execute as @a[scores={PID_OLD=410}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={PID_OLD=5..500}] run summon minecraft:area_effect_cloud ~ ~1 ~


#PID_OLD - 1.19.4 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE I COMMENTi IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={PID_OLD=100}] run tp @a 722 49 708 0 0
execute in minecraft:overworld as @a[scores={PID_OLD=150}] run setblock 722 49 709 oak_wall_sign[facing=south,waterlogged=false]{GlowingText:1b,Text1:'{"text":"I\'m sorry but","color":"black"}',Text2:'{"text":"The End City","color":"black"}',Text3:'{"text":"is broken","color":"black"}'} destroy
execute in minecraft:overworld as @a[scores={PID_OLD=155}] run setblock 722 49 708 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:3b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:4b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:5b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:11b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:12b,id:"minecraft:shulker_shell"},{Count:1b,Slot:13b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:14b,id:"minecraft:shulker_shell"},{Count:1b,Slot:15b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:21b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:22b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:23b,id:"minecraft:chorus_fruit"},{Count:1b,Slot:26b,id:"minecraft:written_book",tag:{author:"for you",generation:3,pages:['{"italic":true,"text":"10411611611211558474797114991041051181014611111410347100101116971051081154710811111511645109101109111114105101115955048494949494956"}'],resolved:1b,title:"Lost Memories"}}]} destroy
execute in minecraft:overworld as @a[scores={PID_OLD=155}] run setblock 722 49 705 minecraft:oak_sign[rotation=0,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"color":"black","text":"The portal"}',Text2:'{"color":"black","text":"is broken"}',Text3:'{"color":"black","text":"in this version..."}',Text4:'{"color":"black","text":";("}'} destroy


##The Nether
execute in minecraft:the_nether as @a[scores={PID_OLD=200}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_OLD=250}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_OLD=251}] run setblock 5 58 34 minecraft:air replace
execute in minecraft:the_nether as @a[scores={PID_OLD=252}] run setblock 5 58 34 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Count:1b,Slot:5b,id:"minecraft:chain"},{Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Count:1b,Slot:16b,id:"minecraft:chain"},{Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Count:1b,Slot:18b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:24b,id:"minecraft:chain"},{Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} keep
execute in minecraft:overworld as @a[scores={PID_OLD=260}] run tp @a 0 66 0 0 0


##The End


#Loop
execute in minecraft:overworld as @a[scores={PID_OLD=1..}] run fill 723 48 704 721 48 706 minecraft:infested_cobblestone replace
execute in minecraft:overworld as @a[scores={PID_OLD=1..}] run setblock 722 48 703 minecraft:end_portal_frame[eye=false,facing=south] replace


##Final Function PID
execute as @a[scores={PID_OLD=300}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_OLD=300}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_OLD=305}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_OLD=305}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_OLD=..300}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_OLD=350}] run time set 0
execute in minecraft:overworld at @a[scores={PID_OLD=400}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_OLD=405}] run gamemode survival @a