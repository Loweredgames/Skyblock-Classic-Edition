#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock PID (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_1 dummy
scoreboard players add @a PID_1 1


##Skyblock PID E INSTALL (AGGIORNARE SE IL PID E DIVERSO)
execute as @a[scores={PID_1=2000000..}] run scoreboard players set @a PID_1 10000
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a PID_1 -10000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PID_1 -1
execute as @a[scores={SkyblockCE_id=200}] run scoreboard players reset @a multiplayer_popup


##PID WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_1=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"gray"}
#execute as @a[scores={PID_1=40}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"gray"}


##Display (NON TOCCARE, SOLO DEBUG)
#scoreboard objectives setdisplay sidebar PID_1


##PID VERSIONS (LASCIARE SEMPRE COSI)
function skyblock:versions/update_pid


##PID OLD (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
#execute as @a[scores={SkyblockCE_id=3000..}] run scoreboard objectives add PID_old dummy
execute as @a[scores={PID_old=1}] run tellraw @a ["",{"text":"\u26a0This version is no longer supported, ","bold":true,"color":"red"},{"text":"please download the latest map","bold":true,"italic":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":".\u26a0","bold":true,"color":"red"}]
execute as @a[scores={PID_old=900000}] run scoreboard objectives remove PID_old
scoreboard players add @a PID_old 1