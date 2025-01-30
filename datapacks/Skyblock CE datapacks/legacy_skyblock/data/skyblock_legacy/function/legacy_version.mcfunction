#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Legacy Old Setup (Aggiornato all'ultima versione: 3.0.0 - 6.0.0 Minecraft: 1.21.1) - (da rimuovere completamente nella 1.22)
scoreboard players add @a SkyblockCE_legacy_old 1
execute as @a[scores={skyblock=1..}] run scoreboard objectives add SkyblockCE_legacy_old dummy
execute as @a[scores={SkyblockCE_legacy_old=1..}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={SkyblockCE_legacy_old=1..}] run tellraw @a {"text":"The compatibility update for this version is no longer available. Download a version older than 1.21.X to convert it.","italic":true}
execute as @a[scores={SkyblockCE_legacy_old=5..10}] run scoreboard players set @a SkyblockCE_islands 5
execute as @a[scores={SkyblockCE_legacy_old=5..}] run scoreboard objectives remove skyblock
execute as @a[scores={SkyblockCE_legacy_old=5..}] run scoreboard objectives remove SkyblockCE_legacy_version
execute as @a[scores={SkyblockCE_legacy_old=500}] run scoreboard objectives add PID_0 dummy
execute as @a[scores={SkyblockCE_legacy_old=505..}] run scoreboard objectives remove SkyblockCE_legacy_old