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


#Mushroom Fields
execute as @a in minecraft:overworld run fillbiome 28 0 1025 -2 255 999 minecraft:mushroom_fields


##The Nether Biome


#Crimson Forest
execute as @a in minecraft:the_nether run fillbiome 3 0 -42 -6 255 -54 minecraft:crimson_forest


#Warped Forest
execute as @a in minecraft:the_nether run fillbiome 4 0 -42 12 255 -53 minecraft:warped_forest


##The End Biome