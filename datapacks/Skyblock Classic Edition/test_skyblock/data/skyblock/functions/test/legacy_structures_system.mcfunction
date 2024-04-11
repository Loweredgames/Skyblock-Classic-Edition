#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##LEGACY STRUCTURES SYSTEM (DA RIMUOVERE NELLA 1.21 - RIMUOVERE TUTTO)


#LOCK DELLE VERSIONI NUOVE
execute as @a[scores={SkyblockCE_structures_id=..1}] run scoreboard objectives add NEW_PSN dummy
execute as @a[scores={SkyblockCE_structures_id=..1}] run scoreboard players set @a NEW_PSN -1
execute as @a[scores={NEW_PSN=-1..}] run scoreboard players set @a PSN0_OLD_SYSTEM -1
execute as @a[scores={NEW_PSN=-1..}] run clear @a written_book[custom_data={tag:generated_book}]


#AGGIORNAMENTO AL NUOVO SISTEMA PID 0
execute as @a[scores={PID_0=..1}] run scoreboard objectives add PSN0_OLD_SYSTEM dummy
execute as @a[scores={PID_0=..1}] run scoreboard players set @a NEW_PSN -2
scoreboard players add @a PSN0_OLD_SYSTEM 1
execute as @a[scores={PSN0_OLD_SYSTEM=2..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={PSN0_OLD_SYSTEM=2..}] run scoreboard players set @a SkyblockCE_structures 10000
execute as @a[scores={PSN0_OLD_SYSTEM=2}] run scoreboard objectives add PSN_0 dummy
execute as @a[scores={PSN0_OLD_SYSTEM=3}] run scoreboard players set @a PSN_0 1015
execute as @a[scores={PSN0_OLD_SYSTEM=4..}] run scoreboard objectives remove PSN0_OLD_SYSTEM
execute as @a[scores={NEW_PSN=-2}] run scoreboard objectives remove NEW_PSN


#AGGIORNAMENTO AL NUOVO SISTEMA PID 1
execute as @a[scores={PID_1=1005..}] run scoreboard objectives add PSN1_OLD_SYSTEM dummy
scoreboard players add @a PSN1_OLD_SYSTEM 1
execute as @a[scores={PSN1_OLD_SYSTEM=2..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={PSN1_OLD_SYSTEM=2..}] run scoreboard players set @a SkyblockCE_structures 10000
execute as @a[scores={PSN1_OLD_SYSTEM=2..}] run scoreboard objectives add 1.20.5_PSN_0 dummy
execute as @a[scores={PSN1_OLD_SYSTEM=2..}] run scoreboard players set @a 1.20.5_PSN_0 10005
execute as @a[scores={SkyblockCE_structures_id=10001..}] run scoreboard objectives remove PSN1_OLD_SYSTEM
execute as @a[scores={SkyblockCE_structures_id=10001..}] run scoreboard objectives remove NEW_PSN
execute as @a[scores={PSN1_OLD_SYSTEM=100..}] run scoreboard objectives remove PSN1_OLD_SYSTEM