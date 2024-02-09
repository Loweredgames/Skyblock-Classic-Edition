#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##LEGACY STRUCTURES SYSTEM (DA RIMUOVERE NELLA 1.22)


#LOCK DELLE VERSIONI NUOVE
execute as @a[scores={SkyblockCE_structures_id=..1}] run scoreboard objectives add NEW_PSN dummy
execute as @a[scores={SkyblockCE_structures_id=..1}] run scoreboard players set @a NEW_PSN -1
execute as @a[scores={NEW_PSN=-1..}] run scoreboard players set @a PSN_OLD_SYSTEM -1
execute as @a[scores={NEW_PSN=-1..}] run clear @a written_book{tag:generated_book}


#LOCK E AGGIORNAMENTO AL NUOVO SISTEMA
execute as @a[scores={SkyblockCE_structures_id=1..}] run scoreboard objectives add PSN_OLD_SYSTEM dummy
execute as @a[scores={SkyblockCE_structures_id=1..}] run scoreboard players add @a PSN_OLD_SYSTEM 1
execute as @a[scores={PSN_OLD_SYSTEM=100..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={PSN_OLD_SYSTEM=100..}] run scoreboard players set @a SkyblockCE_structures 10000
execute as @a[scores={PSN_OLD_SYSTEM=100..}] run scoreboard objectives add PSN_0 dummy
execute as @a[scores={PSN_OLD_SYSTEM=100..}] run scoreboard players set @a PSN_0 1020