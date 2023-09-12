#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Generated Islands


###Large (Easy)

##Overworld


#Large Classic
scoreboard players add @a SkyblockCE_generated_large_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_classic=20}] run say place template skyblock:large_classic -5 45 -5
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_large_classic


#Large Classic Desert
scoreboard players add @a SkyblockCE_generated_large_classic_desert 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_classic_desert=20}] run say place template skyblock:large_classic_desert 61 54 -7
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_classic_desert=50..}] run scoreboard objectives remove SkyblockCE_generated_large_classic_desert


##The Nether


#Large Nether Classic
scoreboard players add @a SkyblockCE_generated_large_nether_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_classic=20}] run say place template skyblock:nether_classic 2 50 3
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_classic


#Large Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_large_nether_bastion_remnant 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_bastion_remnant=20}] run say place structure minecraft:bastion_remnant -4 55 80
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_bastion_remnant=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_bastion_remnant


#Large Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_large_nether_classic_forest 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_large_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_classic_forest


###Default (Normal)

##Overworld


#Classic Island
scoreboard players add @a SkyblockCE_generated_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_classic=20}] run say place template skyblock:classic -4 61 -6
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_classic


#Classic Desert
scoreboard players add @a SkyblockCE_generated_classic_desert 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_classic_desert=20}] run say place template skyblock:classic_desert 66 61 -4
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_classic_desert=50..}] run scoreboard objectives remove SkyblockCE_generated_classic_desert


##The Nether


#Nether Classic
scoreboard players add @a SkyblockCE_generated_nether_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic=20}] run say place template skyblock:nether_classic 2 50 3
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic


#Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_nether_classic_bastion 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic_bastion=20}] run say place template skyblock:nether_classic_bastion 4 55 33
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic_bastion=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic_bastion


#Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_nether_classic_forest 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic_forest


###Small (Hard)

##Overworld


#Small Classic
scoreboard players add @a SkyblockCE_generated_small_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=20}] run say place template skyblock:small_classic -1 62 -3
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_small_classic


#Small Classic Desert
scoreboard players add @a SkyblockCE_generated_small_classic_desert 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=20}] run say place template skyblock:small_classic_desert 66 60 -4
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=50..}] run scoreboard objectives remove SkyblockCE_generated_small_classic_desert


##The Nether


#Small Nether Classic
scoreboard players add @a SkyblockCE_generated_small_nether_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic=20}] run say place template skyblock:nether_classic 2 50 3
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic


#Small Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_small_nether_classic_bastion 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=20}] run say place template skyblock:nether_classic_bastion 4 55 33
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic_bastion


#Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_small_nether_classic_forest 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic_forest