#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


### NIGHTLY BUILDING VERSION SYSTEM


##SETUP FUNCTION NIGHTLY BUILDING (SETUP BOSSBAR)
bossbar add nightly_building {"text":"NIGHTLY_BUILDING","color":"white","bold":true}
bossbar set minecraft:nightly_building players @a
bossbar set minecraft:nightly_building color purple
bossbar set minecraft:nightly_building style progress
bossbar set minecraft:nightly_building max 100
bossbar set minecraft:nightly_building value 100


##NIGHTLY BUILDING VERSION NUMBER (NUMERO DELLA VERSIONE VISTO IN ALTRO, SOLO NELLE VERSIONI DI SVILUPPO)
bossbar set nightly_building name {"text":"JE-1.20.6-5.3.0-Skyblock_Classic_Edition:NIGHTLY_BUILDING_27.09.2024.11250a_[5.0.0-1.20.X]","color":"white","bold":true}


##NIGHTLY BUILDING VERSION (BOSSBAR VISIBILE: SOLO PER GIT, DISABILITARE PER I RILASCI)
bossbar set minecraft:nightly_building visible false