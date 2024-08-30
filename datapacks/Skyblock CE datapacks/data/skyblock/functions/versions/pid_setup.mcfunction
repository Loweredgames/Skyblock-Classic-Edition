#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID LEGACY REMOVE FOOLS (RIMUOVE LA SCORE DOPO LA CONVERSIONE. AGGIORNARE SEMPRE LA SCORE)
execute as @a[scores={PID_april_fools=1000..}] run scoreboard objectives remove PID_legacy


##SETUP VERSION SkyblockCE_ID FOOLS (CAMBIARE LA SCORE IN "SkyblockCE_id". VEDERE LA SCORE PID_X PER RIFERIMENTO)
execute as @a[scores={SkyblockCE_id=30}] run scoreboard players set @a PID_april_fools -100
execute as @a[scores={PID_april_fools=100000..}] run scoreboard players set @a PID_april_fools 10000
