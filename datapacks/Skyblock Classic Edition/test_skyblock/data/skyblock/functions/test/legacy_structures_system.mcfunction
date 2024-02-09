#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##LEGACY STRUCTURES SYSTEM (DA RIMUOVERE NELLA 1.22)
execute as @a[scores={PSN_legacy=2000000..}] run scoreboard players set @a PSN_legacy 10000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_legacy 24000