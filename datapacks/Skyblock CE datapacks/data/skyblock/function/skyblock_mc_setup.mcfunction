#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


# AGGIUNGERE LE FEATURES DI MINECRAFT DI COMPATIBILITA SE E NECCESARIO (COME UN CAMBIO DI FORMAT DEL WORLD GEN NELLA 1.21.2. QUINDI AGGIUNGERE LA CARTELLA WORLDGEN CON QUEL FORMATO) CAMBIARE NEL PACK IL FORMATO DELLA/DELLE VERSIONI SPECIFICHE. SE NON SERVE DISABILITA.


##Setup Minecraft
#scoreboard players set @a SkyOsirion_mc121 1


##Function Setup Minecraft Versions (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function skyblock:mc121
function skyblock:mc1212
function skyblock:mc1214


##Function Setup Wall Texts Sign
function skyblock:wall_texts_sign


##Scoreboard Install Minecraft (AGGIUNGERE QUI TUTTE LE SCOREBOARD SE E NECCESARIO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121)
#scoreboard objectives add SkyOsirion_mc121 dummy
#scoreboard players add @a SkyOsirion_mc121 1


##Scoreboard Loop Minecraft
#execute as @a[scores={SkyOsirion_mc121=2000000..}] run scoreboard players set @a SkyOsirion_121 10000