#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Multiplayer Setup


execute as @a[gamemode=spectator,scores={multiplayer=1}] run gamemode survival @a
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_install -1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_islands -1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_id 14000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_islands 1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_islands 2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_islands 3
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_large 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_default 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_small 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a SkyblockCE_structures 14000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PSN_OLD -1
execute as @a[scores={multiplayer=5}] run setblock 0 62 0 minecraft:black_concrete
execute as @a[scores={multiplayer=5}] run tp @s 0 65 0 0 0
execute as @a[scores={multiplayer=5}] run gamemode survival @s
execute as @a[scores={multiplayer=5}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={multiplayer=5}] run spawnpoint @s 0 63 0
execute as @a[scores={multiplayer=5}] run setworldspawn 0 63 0
execute as @a[scores={multiplayer=6..}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={multiplayer_popup=200}] run tellraw @a ["",{"translate":"skyblock_classic_edition.multiplayer.popup","italic":true},{"text":"\"Skyblock Classic Edition\\datapacks\\Skyblock Classic Edition\\data\\skyblock\\functions\\multiplayer.mcfunction\"","italic":true,"underlined":true,"clickEvent":{"action":"copy_to_clipboard","value":"\"Skyblock Classic Edition\\datapacks\\Skyblock Classic Edition\\data\\skyblock\\functions\\multiplayer.mcfunction\""}}]
execute as @a[scores={multiplayer_popup=5000000..}] run scoreboard players set @a multiplayer_popup 0


##Server or Multiplayer (Only activate if you are in multiplayer: here below)
#scoreboard objectives add multiplayer dummy