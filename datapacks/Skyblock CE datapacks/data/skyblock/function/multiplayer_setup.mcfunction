#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##MULTIPLAYER SETUP
execute store result score SkyOsirion_PlayerOnline SkyOsirion_multiplayer if entity @a
execute if score SkyOsirion_PlayerOnline SkyOsirion_multiplayer matches 1 run scoreboard players set @a SkyOsirion_multiplayer_reset 1
execute if score SkyOsirion_PlayerOnline SkyOsirion_multiplayer matches 2.. run scoreboard players set @a SkyOsirion_multiplayer_reset 2


##MULTIPLAYER RESET (RESETTA LE SCOREBOARD E ALTRO)
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_install -2
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_islands -2
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_tp 0
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_id 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_structures_id 24005
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_custom_structures 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_test_structures 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run clear @a written_book[custom_data={tag:generated_book}]
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_large 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_default 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_small 24000
execute as @a[scores={SkyOsirion_multiplayer_join=2..}] run scoreboard players set @a SkyOsirion_very_small 24000


##MULTIPLAYER JOIN PLAYERS
execute as @a[scores={SkyOsirion_multiplayer_reset=2..}] run scoreboard objectives add SkyOsirion_multiplayer_join dummy
execute as @a[scores={SkyOsirion_multiplayer_reset=2..}] run scoreboard players add @a SkyOsirion_multiplayer_join 1
execute as @a[gamemode=spectator,scores={SkyOsirion_multiplayer_join=0..5}] run tp @p 0 65 0 0 0
execute as @a[gamemode=spectator,scores={SkyOsirion_multiplayer_join=1..}] run gamemode survival @p
execute as @a[scores={SkyOsirion_multiplayer_join=0..5}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={SkyOsirion_multiplayer_join=0..5}] run spawnpoint @p 0 63 0
execute as @a[scores={SkyOsirion_multiplayer_join=0..5}] run setworldspawn 0 63 0


##MULTIPLAYER LOOP
execute as @a[scores={SkyOsirion_multiplayer_join=10005..}] run scoreboard players set @p SkyOsirion_multiplayer_join 1000
execute as @a[scores={SkyOsirion_multiplayer=2000000..}] run scoreboard players set @p SkyOsirion_multiplayer 1000
execute as @a[scores={SkyOsirion_multiplayer_tick=2000000..}] run scoreboard players set @p SkyOsirion_multiplayer_tick 1000
execute as @a[scores={SkyOsirion_multiplayer_reset=61..}] run scoreboard players set @a SkyOsirion_multiplayer_reset 60