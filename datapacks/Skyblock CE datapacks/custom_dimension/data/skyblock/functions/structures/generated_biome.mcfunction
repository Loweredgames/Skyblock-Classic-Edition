#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Overworld Biome


#Main Island
execute as @a in minecraft:overworld run fillbiome -21 0 -21 21 255 21 minecraft:snowy_taiga


#Badlands Desert
execute as @a in minecraft:overworld run fillbiome 72 0 2 62 255 -8 minecraft:badlands


#Ocean
execute as @a in minecraft:overworld run fillbiome 276 0 -12 311 255 15 minecraft:ocean


#Plains
execute as @a in minecraft:overworld run fillbiome 456 0 346 497 255 391 minecraft:plains


#Swamp
execute as @a in minecraft:overworld run fillbiome -183 0 -183 -168 255 -169 minecraft:swamp


#Jungle
execute as @a in minecraft:overworld run fillbiome -62 0 497 -43 255 514 minecraft:jungle


#Desert
execute as @a in minecraft:overworld run fillbiome 56 0 -504 86 255 -474 minecraft:desert


#Mushroom Fields
execute as @a in minecraft:overworld run fillbiome 28 0 1025 -2 255 999 minecraft:mushroom_fields


#Deep Ocean
execute as @a in minecraft:overworld run fillbiome 484 0 -264 513 255 -247 minecraft:deep_ocean


#Cherry Grove
execute as @a in minecraft:overworld run fillbiome -200 0 -491 -176 255 -448 minecraft:cherry_grove


#Meadow
execute as @a in minecraft:overworld run fillbiome 496 0 51 520 255 85 minecraft:meadow


#Dripstone Cave
execute as @a in minecraft:overworld run fillbiome 751 0 735 696 255 696 minecraft:dripstone_caves


#Deep_Dark
execute as @a in minecraft:overworld run fillbiome -704 0 -704 -671 255 -649 minecraft:deep_dark


##The Nether Biome


#Crimson Forest
execute as @a in minecraft:the_nether run fillbiome 3 0 -42 -6 255 -54 minecraft:crimson_forest


#Warped Forest
execute as @a in minecraft:the_nether run fillbiome 4 0 -42 12 255 -53 minecraft:warped_forest


##The End Biome