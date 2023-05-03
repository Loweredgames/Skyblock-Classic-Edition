#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Refactoring Scoreboard (Versione: 1.0)


#Setup Refactoring
scoreboard objectives setdisplay sidebar refactoring_scoreboard


#Start
execute as @a[scores={refactoring_scoreboard=1..20}] run scoreboard objectives add SkyblockCE_install dummy
execute as @a[scores={skyblock_small=1..}] run scoreboard objectives add SkyblockCE_small minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_small=1..}] run scoreboard players add @a SkyblockCE_small 1000
execute as @a[scores={SkyblockCE_small=1005..}] run scoreboard objectives remove skyblock_small
execute as @a[scores={skyblock_normal=1..}] run scoreboard objectives add SkyblockCE_default minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_normal=1..}] run scoreboard players add @a SkyblockCE_default 1000
execute as @a[scores={SkyblockCE_default=1005..}] run scoreboard objectives remove skyblock_normal
execute as @a[scores={skyblock_large=1..}] run scoreboard objectives add SkyblockCE_large minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_large=1..}] run scoreboard players add @a SkyblockCE_large 1000
execute as @a[scores={SkyblockCE_large=1005..}] run scoreboard objectives remove skyblock_large


#Scoreboard Remove
scoreboard objectives remove skyblock_install