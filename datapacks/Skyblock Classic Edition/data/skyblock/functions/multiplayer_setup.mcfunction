#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Multiplayer Setup
execute store result score SkyblockCE_PlayerOnline SkyblockCE_multiplayer if entity @a
execute as @a[scores={SkyblockCE_multiplayer_reset=1}] run say This is singleplayer!
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 1 run scoreboard players set @a SkyblockCE_multiplayer_reset 1
#execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run say This is multiplayer!
execute if score SkyblockCE_PlayerOnline SkyblockCE_multiplayer matches 2.. run scoreboard players set @a SkyblockCE_multiplayer_reset -1


##Multiplayer Reset (RESETTA LE SCOREBOARD E ALTRO)
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard objectives add fix_end dummy
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a fix_end 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_install -1
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_islands -1
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_id 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_large 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_default 24000
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_small 24000


##Multiplayer Tick
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard objectives add SkyblockCE_multiplayer_tick dummy
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players add @a SkyblockCE_multiplayer_tick 1
#execute as @a[scores={SkyblockCE_multiplayer_tick=1..}] run scoreboard objectives remove SkyblockCE_quit_game
execute as @a[scores={SkyblockCE_multiplayer_tick=..5}] run tp @s 0 65 0 0 0
execute as @a[gamemode=spectator,scores={SkyblockCE_multiplayer_tick=1..5}] run gamemode survival @s
execute as @a[scores={SkyblockCE_multiplayer_tick=..5}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={SkyblockCE_multiplayer_tick=..5}] run spawnpoint @s 0 63 0
execute as @a[scores={SkyblockCE_multiplayer_tick=..5}] run setworldspawn 0 63 0
#execute as @a[scores={SkyblockCE_multiplayer_tick=2..10}] run scoreboard objectives remove SkyblockCE_multiplayer_tick
execute as @a[scores={SkyblockCE_multiplayer_tick=2000000..}] run scoreboard players set @a SkyblockCE_multiplayer_tick 10000



##Scoreboard Legacy (da cancellare nella 1.21)
scoreboard objectives remove multiplayer
scoreboard objectives remove multiplayer_popup