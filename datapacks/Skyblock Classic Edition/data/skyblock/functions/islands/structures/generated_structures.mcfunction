#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##New Structure Setup
scoreboard players add @a PSN_0 1
execute as @a[scores={PSN_0=1}] run scoreboard players set @a tp 0
execute as @a[scores={PSN_0=1}] run gamemode spectator @a
execute as @a[scores={PSN_0=2}] run effect give @a blindness 52 0 true
execute as @a[scores={PSN_0=3}] run effect give @a night_vision 51 0 true


##Teleport Players Structures

#NOME
#execute as @a[scores={PSN_0=200}] run ##
execute as @a[scores={PSN_0=200}] run me This is a test and will come soon...


##Generated New Structures
#execute as @a[scores={PSN_0=250}] run place template ##


##Final Function
execute as @a[scores={PSN_0=1}] run scoreboard players set @a PSN_legacy 2005
execute as @a[scores={PSN_0=1}] run gamerule doImmediateRespawn true
execute as @a[scores={PSN_0=1000}] run gamerule doImmediateRespawn false
execute as @a[scores={PSN_0=1000..2001}] run clear @a written_book{tag:generated_structures}
execute as @a[scores={PSN_0=1000}] run tp @s 0 66 0 90 0
execute as @a[scores={PSN_0=1005}] run gamemode survival @a
execute as @a[scores={PSN_0=1005}] run title @a times 20 100 20
execute as @a[scores={PSN_0=1005}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={PSN_0=1005}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={PSN_0=1010}] run effect clear @a minecraft:blindness
execute as @a[scores={PSN_0=1010}] run effect clear @a minecraft:night_vision
execute as @a[scores={PSN_0=1015}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={PSN_0=2000..}] run scoreboard objectives remove PSN_0