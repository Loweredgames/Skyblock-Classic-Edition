#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SKYBLOCK PID INSTALL (AGGIORNARE SE IL PID NEL NUOVO NUMERO)
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a PID_1 -10000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PID_1 24000


##SKYBLOCK PID VERSIONS (LASCIARE SEMPRE COSI)
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/pid_setup


##SKYBLOCK PID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_1=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"#d5d5d5"}
#execute as @a[scores={PID_1=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"#d5d5d5"}


##SKYBLOCK PID WARNING (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON è PIU SUPPORTATA)
#execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_warning dummy
scoreboard players add @a PID_warning 1
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"translate":"skyblock_classic_edition.setup_version.warning","bold":true,"color":"red"},{"translate":"skyblock_classic_edition.setup_version.warning.download","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard objectives remove PID_warning