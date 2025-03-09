#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


###BUILDING VERSION SYSTEM


##SETUP FUNCTION BUILDING (SETUP BOSSBAR)
bossbar add building {"text":"BUILDING","color":"white","bold":true}
bossbar set minecraft:building players @a
bossbar set minecraft:building color green
bossbar set minecraft:building style progress
bossbar set minecraft:building max 100


##BUILDING VERSION NUMBER (NUMERO DELLA VERSIONE VISTO IN ALTRO, SOLO NELLE VERSIONI DI SVILUPPO)
bossbar set building name {"text":"fork_JE-1.21.4-6.1.0-Skyblock_Classic_Edition:BUILDING:22.02.2025a","color":"white","bold":true}


##MAP PROGRESS (I PROGRESSI DELLA MAPPA, E UN NUMERO APROSSIMATO)
bossbar set minecraft:building value 40


##WARNING MESSAGE (MESSAGGIO DA ABILITARE SOLO NELLE VERSIONI DI SVILUPPO)
title @a actionbar {"text":"\u26a0Work in Progress\u26a0","bold":true,"color":"dark_red"}


##BUILDING VERSION (BOSSBAR VISIBILE: True SOLO VERSIONI DI SVILUPPO o False VERSIONI STABILI, TENERE ACCESO PER LE NIGHT BUILDING)
bossbar set minecraft:building visible false