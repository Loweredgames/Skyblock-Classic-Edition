#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##WORLD UPDATE AND CONVERSION FUNCTIONS
function skyblock_pid:update_pid


##PID LEGACY REMOVE (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
#NOTA: PID 1 rimarra cosi ma dovrebbe essere 1.20.4_PID_1. ricordarsi!!!
execute as @a[scores={PID_1=1000..}] run scoreboard objectives remove PID_legacy


##SETUP VERSION SkyblockCE_ID (CAMBIARE LA SCORE IN "SkyblockCE_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={SkyblockCE_id=30}] run scoreboard players set @a PID_1 -1000