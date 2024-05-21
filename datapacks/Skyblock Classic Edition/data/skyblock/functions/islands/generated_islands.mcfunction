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
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_classic=20}] run say place template skyblock:nether_classic 2 50 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_classic


#Large Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_large_nether_bastion_remnant 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_bastion_remnant=20}] run say place structure minecraft:bastion_remnant -4 55 80
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_bastion_remnant=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_bastion_remnant


#Large Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_large_nether_classic_forest 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_large_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_large_nether_classic_forest


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
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic=20}] run say place template skyblock:nether_classic 2 50 3
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic


#Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_nether_classic_bastion 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic_bastion=20}] run say place template skyblock:nether_classic_bastion 4 55 33
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic_bastion=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic_bastion


#Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_nether_classic_forest 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_nether_classic_forest


###Small (Hard)

##Overworld


#Small Classic
scoreboard players add @a SkyblockCE_generated_small_classic 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=5}] run fill 1 62 -1 -1 63 1 minecraft:dirt replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=10}] run fill 1 64 1 -1 64 -1 minecraft:grass_block replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=15}] run fill 3 68 -3 -1 69 1 minecraft:oak_leaves[persistent=false] replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=20}] run fill 0 70 0 2 71 -2 minecraft:oak_leaves[persistent=false] replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=22}] run fill 1 65 -1 1 70 -1 minecraft:oak_log replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=25}] run setblock 1 65 0 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:12b,id:"minecraft:ice"},{Count:1b,Slot:13b,id:"minecraft:filled_map",tag:{map:0}},{Count:1b,Slot:14b,id:"minecraft:lava_bucket"}]} replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=26}] run setblock 1 64 -1 minecraft:rooted_dirt replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=27}] run setblock 0 63 0 minecraft:moss_block replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=28}] run setblock 0 62 0 minecraft:bedrock replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=30}] run setblock 0 65 1 minecraft:grass replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=31}] run setblock -1 65 1 minecraft:grass replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=32}] run setblock 0 65 0 minecraft:grass replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=33}] run setblock -1 65 -1 minecraft:poppy replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=34}] run setblock 0 65 -1 minecraft:tall_grass[half=lower] replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=35}] run setblock 0 66 -1 minecraft:tall_grass[half=upper] replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_small_classic


#Small Classic Desert
scoreboard players add @a SkyblockCE_generated_small_classic_desert 1
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=5}] run fill 66 61 -4 68 61 -2 minecraft:red_sandstone replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=10}] run fill 68 62 -4 66 64 -2 minecraft:red_sand replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=11}] run setblock 68 66 -4 minecraft:moss_carpet replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=12}] run setblock 68 65 -4 minecraft:cactus replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=13}] run setblock 67 61 -3 minecraft:pumpkin replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=15}] run setblock 67 65 -3 minecraft:chest[facing=west,type=single,waterlogged=false]{Items:[{Count:10b,Slot:4b,id:"minecraft:obsidian"},{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"You\'ve come this far, good job. here are other useful materials...","italic":true}'],MapColor:0,Name:'{"text":"Journal Skyblock #00","bold":true}'}}},{Count:1b,Slot:12b,id:"minecraft:melon_slice"},{Count:1b,Slot:13b,id:"minecraft:clock"},{Count:1b,Slot:14b,id:"minecraft:beetroot_seeds"}]}
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=16}] run setblock 67 60 -3 minecraft:spore_blossom replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=16}] run setblock 66 65 -2 minecraft:dead_bush replace
execute in minecraft:overworld as @a[scores={SkyblockCE_generated_small_classic_desert=50..}] run scoreboard objectives remove SkyblockCE_generated_small_classic_desert


##The Nether


#Small Nether Classic
scoreboard players add @a SkyblockCE_generated_small_nether_classic 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=5}] run fill 3 52 3 5 50 5 minecraft:glowstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=10}] run setblock 4 51 4 minecraft:lodestone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=10}] run fill 2 52 6 6 56 6 minecraft:obsidian replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=15}] run fill 3 53 6 5 55 6 minecraft:nether_portal[axis=x] replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=16}] run fill 5 52 7 3 52 7 minecraft:obsidian replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=17}] run setblock 5 53 5 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:1b,Slot:8b,id:"minecraft:filled_map",tag:{display:{Lore:['{"text":"It is very hot but I believe you will adapt. in the distance there should be a Nether fortress...","italic":true}'],MapColor:11207427,Name:'{"text":"Welcome to Hell","bold":true}'}}},{Count:1b,Slot:10b,id:"minecraft:red_mushroom"},{Count:1b,Slot:12b,id:"minecraft:sugar_cane"},{Count:1b,Slot:13b,id:"minecraft:ice"},{Count:1b,Slot:14b,id:"minecraft:birch_sapling"},{Count:1b,Slot:16b,id:"minecraft:brown_mushroom"},{Count:1b,Slot:22b,id:"minecraft:pointed_dripstone"}]} replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic


#Small Nether Classic Bastion
scoreboard players add @a SkyblockCE_generated_small_nether_classic_bastion 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=5}] run fill 6 55 33 4 57 35 minecraft:polished_blackstone_bricks replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=10}] run setblock 5 56 33 minecraft:chiseled_polished_blackstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=11}] run setblock 4 56 34 minecraft:chiseled_polished_blackstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=12}] run setblock 5 56 35 minecraft:chiseled_polished_blackstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=13}] run setblock 6 56 34 minecraft:chiseled_polished_blackstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=14}] run setblock 5 57 34 minecraft:chiseled_polished_blackstone replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=15}] run setblock 5 55 34 minecraft:chiseled_polished_blackstone
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=15}] run setblock 5 58 34 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Count:2b,Slot:0b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:1b,id:"minecraft:piglin_banner_pattern"},{Count:1b,Slot:3b,id:"minecraft:magma_cream"},{Count:1b,Slot:4b,id:"minecraft:gold_nugget"},{Count:1b,Slot:5b,id:"minecraft:chain"},{Count:1b,Slot:6b,id:"minecraft:music_disc_pigstep"},{Count:1b,Slot:7b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:9b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:11b,id:"minecraft:gold_nugget"},{Count:1b,Slot:12b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:13b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:14b,id:"minecraft:magma_cream"},{Count:1b,Slot:16b,id:"minecraft:chain"},{Count:1b,Slot:17b,id:"minecraft:gold_nugget"},{Count:1b,Slot:18b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:gilded_blackstone"},{Count:1b,Slot:23b,id:"minecraft:netherite_scrap"},{Count:1b,Slot:24b,id:"minecraft:chain"},{Count:1b,Slot:25b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:soul_speed",lvl:3s}]}},{Count:2b,Slot:26b,id:"minecraft:magma_cream"}]} replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=16}] run setblock 5 56 34 minecraft:blue_ice replace
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_bastion=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic_bastion


#Nether Classic Forest
scoreboard players add @a SkyblockCE_generated_small_nether_classic_forest 1
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_forest=20}] run say place template skyblock:nether_classic_forest -2 50 -50
execute in minecraft:the_nether as @a[scores={SkyblockCE_generated_small_nether_classic_forest=50..}] run scoreboard objectives remove SkyblockCE_generated_small_nether_classic_forest