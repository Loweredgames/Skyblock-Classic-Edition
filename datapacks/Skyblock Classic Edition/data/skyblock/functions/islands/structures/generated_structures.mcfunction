#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##New Structure Setup
scoreboard players add @a PSN_0 1
#scoreboard players add @a structure_skyblock 1
execute as @a[scores={PSN_0=1}] run scoreboard players set @a tp 0
execute as @a[scores={PSN_0=1}] run gamemode spectator @a
execute as @a[scores={PSN_0=2}] run effect give @a blindness 52 0 true
execute as @a[scores={PSN_0=3}] run effect give @a night_vision 51 0 true
execute as @a[scores={PSN_0=2000000..}] run scoreboard players set @a PSN_0 10000


##Teleport Players Structures

#NOME
#execute as @a[scores={PSN_0=200}] run ##
execute as @a[scores={PSN_0=200}] run me test


##Generated New Structures
#execute as @a[scores={PSN_0=250}] run place template ##


##Final Function
execute as @a[scores={PSN_0=1000}] run tp @s 0 66 0 90 0
execute as @a[scores={PSN_0=1005}] run gamemode survival @a
execute as @a[scores={PSN_0=1005}] run title @a times 20 100 20
execute as @a[scores={PSN_0=1005}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={PSN_0=1005}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={PSN_0=2001}] run effect clear @a minecraft:blindness
execute as @a[scores={PSN_0=2001}] run effect clear @a minecraft:night_vision