#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Multiplayer Legacy 1.0.0 (DA CANCELLARE NELLA 1.21)
#scoreboard objectives setdisplay sidebar multiplayer (debug)
execute as @a[scores={SkyblockCE_multiplayer=..5}] run scoreboard objectives remove multiplayer
execute as @a[scores={multiplayer=1..}] run scoreboard objectives add fix_end dummy
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a fix_end 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PID_1 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PSN_legacy 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PSN_0 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_id 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_large 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_default 24000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_small 24000
scoreboard players set @a multiplayer 1
scoreboard objectives remove multiplayer_popup