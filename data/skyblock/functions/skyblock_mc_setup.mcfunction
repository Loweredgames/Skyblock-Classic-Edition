#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


# AGGIUNGERE LE FEATURES DI MINECRAFT DI COMPATIBILITA SE E NECCESARIO (COME UN CAMBIO DI FORMAT DEL WORLD GEN NELLA 1.21.2. QUINDI AGGIUNGERE LA CARTELLA WORLDGEN CON QUEL FORMATO) CAMBIARE NEL PACK IL FORMATO DELLA/DELLE VERSIONI SPECIFICHE. SE NON SERVE DISABILITA.


##Setup Minecraft
#scoreboard players set @a SkyblockCE_mc121 1


##Function Setup Minecraft (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121)
function skyblock_mc:mc121


##Scoreboard Install Minecraft (AGGIUNGERE QUI TUTTE LE SCOREBOARD SE E NECCESARIO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121)
#scoreboard objectives add SkyblockCE_mc121 dummy
#scoreboard players add @a SkyblockCE_mc121 1


##Scoreboard Loop Minecraft
#execute as @a[scores={SkyblockCE_mc121=2000000..}] run scoreboard players set @a SkyblockCE_121 10000