#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SKYBLOCK PID INSTALL (AGGIORNARE SE IL PID NEL NUOVO NUMERO)
execute as @a[scores={SkyblockCE_install=1..}] run scoreboard players set @a 1.20.5_PID_0 -10000
execute as @a[scores={SkyblockCE_install_test=1..}] run scoreboard players set @a 1.20.5_PID_0 -10000
execute as @a[scores={SkyblockCE_multiplayer_join=2..}] run scoreboard players set @a 1.20.5_PID_0 24000


##SKYBLOCK PID VERSIONS (LASCIARE SEMPRE COSI)
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run function skyblock:versions/pid_setup


##SKYBLOCK PID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI, DISABILITARE LA SECONDA RIGA SE C'E IL PID)
execute as @a[scores={1.20.5_PID_0=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"#d5d5d5"}
#execute as @a[scores={1.20.5_PID_0=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"#d5d5d5"}
#execute as @a[scores={1.20.6_PID_0=35..100},gamemode=spectator] run gamemode survival @a


##SKYBLOCK LTS WARNING (SOLO QUANDO LTS STA PER FINIRE, TEMPO PER AVVISARE I GIOCATORI CHE LA VERSIONE STA DIVENTANDO OBSOLETA, ATTIVARE QUANDO C'E LA PENULTIMA VERSIONE LTS. DISABILITARE QUANDO SI ATTIVA LA VERSIONE OBSOLETA SOTTO.)
#execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_lts_warning dummy
scoreboard players add @a PID_lts_warning 1
execute as @a[scores={PID_lts_warning=15}] run tellraw @a [{"text":"The maintenance release (LTS) is reaching the end of its life and will no longer be maintained. Remaining issues will be moved to the next maintenance release (LTS) or closed at the end of this release. This is the minimum expected time that the next release will replace it, this time may change and is not 100% accurate, so it may be updated in each maintenance release. Here is how long the next version becomes obsolete:","bold":true,"color":"red"},{"text":" "},{"text":"??? ","bold":true,"color":"red"},{"text":"month's","bold":true,"color":"red"}]
execute as @a[scores={PID_lts_warning=900000..}] run scoreboard objectives remove PID_lts_warning


##SKYBLOCK PID WARNING (SOLO VERSIONI NON PIU SUPPORTATE, ATTIVARE QUANDO LA VERSIONE NON E PIU SUPPORTATA)
#execute as @a[scores={SkyblockCE_id=2000..}] run scoreboard objectives add PID_warning dummy
scoreboard players add @a PID_warning 1
execute as @a[scores={PID_warning=5}] run tellraw @a ["",{"translate":"skyblock_classic_edition.setup_version.warning","bold":true,"color":"red"},{"translate":"skyblock_classic_edition.setup_version.warning.download","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}}]
execute as @a[scores={PID_warning=900000..}] run scoreboard objectives remove PID_warning