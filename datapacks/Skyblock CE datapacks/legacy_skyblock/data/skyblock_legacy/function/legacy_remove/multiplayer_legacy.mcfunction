#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Multiplayer Legacy (Aggiornato all'ultima versione: 2.0.0 - 6.0.0 Minecraft: 1.21.1) - (da rimuovere completamente nella 1.22)
execute as @a[scores={SkyblockCE_multiplayer=1..}] run scoreboard objectives remove multiplayer
scoreboard objectives remove multiplayer_popup
scoreboard objectives remove SkyblockCE_multiplayer_tick