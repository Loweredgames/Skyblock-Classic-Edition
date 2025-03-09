#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


# AGGIUNGERE LE FEATURES DI MINECRAFT DI COMPATIBILITA SE E NECCESARIO (COME UN CAMBIO DI FORMAT DEL WORLD GEN NELLA 1.21.2. QUINDI AGGIUNGERE LA CARTELLA WORLDGEN CON QUEL FORMATO) CAMBIARE NEL PACK IL FORMATO DELLA/DELLE VERSIONI SPECIFICHE. SE NON SERVE DISABILITA.


##Setup MC April Fools Edition



##Function Setup Minecraft Versions (AGGIUNGERE QUI TUTTE LE FUNZIONI SE SERVONO CON ALLA FINE LA VERSIONE SPECIFICA SENZA IL PUNTO COME: 121, 1212 ecc...)
function skyblock:mc_april
function skyblock:custom_structures
function skyblock:generated_biome


##Function Setup Wall Texts Sign
function skyblock:wall_texts_sign


##Scoreboard Loop Minecraft
execute as @a[scores={SkyblockCE_april2025=2000000..}] run scoreboard players set @a SkyblockCE_april2025 10000