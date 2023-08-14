#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock PID (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_1 dummy
scoreboard players add @a PID_1 1
scoreboard players add @a PID_warning 1


##Skyblock PID INSTALL (AGGIORNARE SE IL PID E DIVERSO)
execute as @a[scores={PID_1=2000000..}] run scoreboard players set @a PID_1 10000
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a PID_1 -10000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PID_1 24000


##Skyblock PID Reset LOOP
execute as @a[scores={PID_1=90000000..}] run scoreboard players set @a PID_1 100000


##Skyblock PID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_1=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"gray"}
#execute as @a[scores={PID_1=40}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"gray"}


##Display Debug (NON TOCCARE, SOLO DEBUG)
#scoreboard objectives setdisplay sidebar PID_1


##Skyblock PID VERSIONS (LASCIARE SEMPRE COSI)
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/update_pid


##Skyblock PID WARNING (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
#execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_warning dummy
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"text":"\u26a0Warning: this version is no longer supported!\u26a0","bold":true,"color":"red"},{"text":"\n\nPlease download the latest version of the custom map here.","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard players set @a PID_warning 1