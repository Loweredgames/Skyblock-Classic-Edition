#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##WORLD UPDATE AND CONVERSION FUNCTIONS
function skyblock_pid:update_pid


##PID LEGACY REMOVE (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
execute as @a[scores={1.20.6_PID_0=1000..}] run scoreboard objectives remove PID_legacy_v1
execute as @a[scores={1.20.6_PID_0=1000..}] run scoreboard objectives remove PID_legacy_v2
execute as @a[scores={1.20.6_PID_0=1000..}] run scoreboard objectives remove PID_legacy_v3


##SETUP VERSION SkyblockCE_ID (CAMBIARE LA SCORE IN "SkyblockCE_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={SkyblockCE_id=30}] run scoreboard players set @a 1.20.6_PID_0 -100


##VERSION IMPORT LOCK (BLOCCA LA CONVERSIONE SE SI USA IMPORT)
execute as @a[scores={SkyblockCE_import=1..100}] run scoreboard players set @a 1.20.6_PID_0 2400