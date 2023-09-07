#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock PID (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_OLD dummy
scoreboard players add @a PID_OLD 1
scoreboard players add @a PID_warning 1


##Skyblock PID E INSTALL (AGGIORNARE SE IL PID E DIVERSO)
execute as @a[scores={PID_OLD=2000000..}] run scoreboard players set @a PID_OLD 10000
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a PID_OLD -10000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PID_OLD 24000


##PID WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_OLD=30}] run tellraw @s {"text":"World update and conversion for old version: Minecraft 1.19.4","italic":true,"color":"gray"}


##Display (NON TOCCARE, SOLO DEBUG)
#scoreboard objectives setdisplay sidebar PID_OLD


##PID VERSIONS (LASCIARE SEMPRE COSI)
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/update_pid


##PID WARNING (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
#execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_warning dummy
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"text":"\u26a0Warning: this version is no longer supported!\u26a0","bold":true,"color":"red"},{"text":"\n\nPlease download the latest version of the custom map here.","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard players set @a PID_warning 1