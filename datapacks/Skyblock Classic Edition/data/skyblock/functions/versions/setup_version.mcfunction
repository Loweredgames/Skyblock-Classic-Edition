#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Skyblock PID (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_OLD dummy
scoreboard players add @a PID_OLD 1


##Skyblock PID E INSTALL (AGGIORNARE SE IL PID E DIVERSO)
execute as @a[scores={PID_OLD=2000000..}] run scoreboard players set @a PID_OLD 10000
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a PID_OLD -10000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PID_OLD -1
execute as @a[scores={SkyblockCE_id=200}] run scoreboard players reset @a multiplayer_popup


##PID WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_OLD=30}] run tellraw @s {"text":"World update and conversion for old version: Minecraft 1.19.4","italic":true,"color":"gray"}


##Display (NON TOCCARE, SOLO DEBUG)
scoreboard objectives setdisplay sidebar PID_OLD


##PID VERSIONS (LASCIARE SEMPRE COSI)
function skyblock:versions/update_pid


##PID OLD (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
execute as @a[scores={SkyblockCE_id=3000..}] run scoreboard objectives add PID_OLD dummy
execute as @a[scores={PID_OLD=1}] run tellraw @a ["",{"text":"\u26a0This version is no longer supported, ","bold":true,"color":"red"},{"text":"please download the latest map","bold":true,"italic":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":".\u26a0","bold":true,"color":"red"}]
execute as @a[scores={PID_OLD=900000}] run scoreboard objectives remove PID_OLD
scoreboard players add @a PID_OLD 1