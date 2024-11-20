#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PSN STRUCTURES SYSTEM (DA RIMUOVERE NELLA 1.21.X LTS (quando ci sara la prossima LTS) - RIMUOVERE TUTTO NEL DATAPACK)


#PSN LEGACY
#execute as @a[scores={SkyblockCE_structures_id=1..5000}] run scoreboard players set @a SkyblockCE_id 25
#execute as @a[scores={SkyblockCE_final=1..200}] run scoreboard players set @a 1.20.6_PID_0 10000
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove NEW_PSN
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove PSN0_OLD_SYSTEM
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove 1.20.5_PSN_0
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove PSN1_OLD_SYSTEM
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove NEW_PSN
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove PSN_1
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove PSN_0
execute as @a[scores={SkyblockCE_final=1..}] run scoreboard objectives remove PSN_legacy