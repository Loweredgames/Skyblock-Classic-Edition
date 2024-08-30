#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SKYBLOCK PID INSTALL FOOLS (AGGIORNARE SE IL PID NEL NUOVO NUMERO)
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PID_april_fools 24000


##SKYBLOCK PID VERSIONS FOOLS (LASCIARE SEMPRE COSI)
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/pid_setup


##SKYBLOCK PID VERSION WARNING FOOLS (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_april_fools=30}] run tellraw @s {"text":"There is nothing to see here in this version...","italic":true,"color":"#d5d5d5"}


##SKYBLOCK PID WARNING FOOLS (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_warning dummy
scoreboard players add @a PID_warning 1
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"text":"WARNING: This version is NOT SUPPORTED in any way and all issues will be closed: please do not report them!!!. This version must be played and distributed as is, without any modifications (no mods and resources pack). DO NOT ADD THIS VERSION IN STABLE OR SNAPSHOTS VERSIONS OFF Minecraft, various bugs and crashes may occur that cannot be fixed. thanks and have fun!","bold":true,"color":"red"}]
execute as @a[scores={PID_warning=900000..}] run scoreboard objectives remove PID_warning