#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##MULTIPLAYER SETUP
execute store result score SkyblockCE_PlayerOnline SkyblockCE_multiplayer if entity @a
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 1 run scoreboard players set @a SkyblockCE_multiplayer_reset 1
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 2.. run scoreboard players set @a SkyblockCE_multiplayer_reset -1


##MULTIPLAYER RESET (RESETTA LE SCOREBOARD E ALTRO)
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_install -2
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_islands -2
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_id 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_structures_id 24005
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_structures 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_legacy -1
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run clear @a written_book{tag:generated_book}
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_large 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_default 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_small 24000


##MULTIPLAYER JOIN PLAYERS
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard objectives add SkyblockCE_multiplayer_join dummy
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players add @a SkyblockCE_multiplayer_join 1
execute as @a[scores={SkyblockCE_multiplayer_join=0..5}] run tp @s 0 65 0 0 0
execute as @a[gamemode=spectator,scores={SkyblockCE_multiplayer_join=1..5}] run gamemode survival @s
execute as @a[scores={SkyblockCE_multiplayer_join=0..5}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_multiplayer_join=0..5}] run spawnpoint @s 0 63 0
execute as @a[scores={SkyblockCE_multiplayer_join=0..5}] run setworldspawn 0 63 0


##MULTIPLAYER LOOP
execute as @a[scores={SkyblockCE_multiplayer=2000000..}] run scoreboard players set @s SkyblockCE_multiplayer 100
execute as @a[scores={SkyblockCE_multiplayer_tick=2000000..}] run scoreboard players set @s SkyblockCE_multiplayer_tick 100