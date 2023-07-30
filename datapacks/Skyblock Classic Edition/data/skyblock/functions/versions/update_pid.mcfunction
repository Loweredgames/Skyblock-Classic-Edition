#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


###World Update and Conversion


##Setup Version SkyblockCE_ID (CAMBIARE LA SCORE IN "SkyblockCE_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={SkyblockCE_id=30}] run scoreboard players set @a PID_OLD -1000


##Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_OLD=1..100}] run gamemode spectator @a
execute as @a[scores={PID_OLD=5}] run time set 0
execute as @a[scores={PID_OLD=5}] run gamerule doImmediateRespawn true
execute as @a[scores={PID_OLD=1..1000}] run effect give @a blindness 5 0 true
execute as @a[scores={PID_OLD=1..1000}] run effect give @a night_vision 5 0 true
execute as @a[scores={PID_OLD=1000}] run gamerule doImmediateRespawn false
execute as @a[scores={PID_OLD=1005}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={PID_OLD=1..1000}] run summon minecraft:area_effect_cloud ~ ~1 ~


#PID Legacy Remove (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
execute as @a[scores={PID_OLD=1000..}] run scoreboard objectives remove PID_legacy


#PID_OLD - 1.20.1 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE I COMMENTi IN SE)
#scoreboard objectives setdisplay sidebar PID_OLD


##Overworld
execute in minecraft:overworld as @a[scores={PID_OLD=100}] run tp @a 722 49 708 0 0
execute in minecraft:overworld as @a[scores={PID_OLD=200}] run setblock 722 49 709 oak_wall_sign[facing=south,waterlogged=false]{GlowingText:1b,Text1:'{"text":"I\'m sorry but","color":"black"}',Text2:'{"text":"The End City","color":"black"}',Text3:'{"text":"is broken","color":"black"}'} destroy
execute in minecraft:overworld as @a[scores={PID_OLD=205}] run setblock 722 49 705 minecraft:oak_sign[rotation=0,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"color":"black","text":"The portal"}',Text2:'{"color":"black","text":"is broken"}',Text3:'{"color":"black","text":"in this version..."}',Text4:'{"color":"black","text":";("}'}


##The Nether
#execute in minecraft:the_nether as @a[scores={PID_OLD=900}] run tp @a 5 58 33 0 0
execute in minecraft:the_nether as @a[scores={PID_OLD=950}] run fill 6 57 33 4 57 35 minecraft:polished_blackstone_bricks keep
execute in minecraft:the_nether as @a[scores={PID_OLD=951}] run setblock 5 58 34 minecraft:air replace
execute in minecraft:the_nether as @a[scores={PID_OLD=952}] run setblock 5 58 34 chest[facing=north,type=single,waterlogged=false]{Items:[{Slot:0b,Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Slot:1b,Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Slot:2b,Count:1b,Slot:2b,id:"minecraft:netherite_upgrade_smithing_template"},{Slot:3b,Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Slot:4b,Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Slot:5b,Count:1b,Slot:5b,id:"minecraft:chain"},{Slot:6b,Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Slot:7b,Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Slot:8b,Count:1b,Slot:8b,id:"minecraft:snout_armor_trim_smithing_template"},{Slot:9b,Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Slot:10b,Count:1b,Slot:10b,id:"minecraft:rib_armor_trim_smithing_template"},{Slot:11b,Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Slot:12b,Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Slot:13b,Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Slot:14b,Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Slot:16b,Count:1b,Slot:16b,id:"minecraft:chain"},{Slot:17b,Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Slot:18b,Count:1b,Slot:18b,id:"minecraft:chain"},{Slot:20b,Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Slot:22b,Count:1b,Slot:22b,id:"minecraft:netherite_upgrade_smithing_template"},{Slot:23b,Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Slot:24b,Count:1b,Slot:24b,id:"minecraft:chain"},{Slot:25b,Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Slot:26b,Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} keep
execute in minecraft:the_nether as @a[scores={PID_OLD=955}] run setblock 6 58 34 minecraft:piglin_head[rotation=15] keep
execute in minecraft:the_nether as @a[scores={PID_OLD=956}] run setblock 4 58 34 minecraft:piglin_head[rotation=1] keep
execute in minecraft:overworld as @a[scores={PID_OLD=960}] run tp @a 0 66 0 0 0


##The End


#Loop
execute in minecraft:overworld as @a[scores={PID_OLD=1..}] run fill 723 48 704 721 48 706 minecraft:infested_cobblestone destroy


##Final Function PID
execute as @a[scores={PID_OLD=1001}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_OLD=1001}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_OLD=1005}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_OLD=1005}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_OLD=..1000}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_OLD=1010}] run time set 0
execute in minecraft:overworld at @a[scores={PID_OLD=1005}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_OLD=1011}] run gamemode survival @a