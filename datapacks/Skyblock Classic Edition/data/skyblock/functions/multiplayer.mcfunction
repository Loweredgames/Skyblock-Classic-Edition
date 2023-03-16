##Multiplayer Setup


execute as @a[scores={multiplayer=1}] run scoreboard objectives add fix_end dummy
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a fix_end 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_island 1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_island 2
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_island 3
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_large 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_normal 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_small 1400
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_install -1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_island -1
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a structure_skyblock 14000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a skyblock_ID 14000
execute as @a[scores={multiplayer=5}] run setblock 0 62 0 minecraft:black_concrete
execute as @a[scores={multiplayer=5}] run tp @s 0 64 0 0 0
execute as @a[scores={multiplayer=5}] run gamemode survival @s
execute as @a[scores={multiplayer=5}] run fill 0 63 0 0 64 0 minecraft:air destroy
execute as @a[scores={multiplayer=5}] run spawnpoint @s 0 63 0
execute as @a[scores={multiplayer=5}] run setworldspawn 0 63 0
execute as @a[scores={multiplayer=6..}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={multiplayer_popup=200}] run tellraw @a ["",{"translate":"skyblock_classic_edition.multiplayer.popup","italic":true},{"text":"\"Skyblock Classic Edition\\datapacks\\Skyblock Classic Edition\\data\\skyblock\\functions\\multiplayer.mcfunction\"","italic":true,"underlined":true,"clickEvent":{"action":"copy_to_clipboard","value":"\"Skyblock Classic Edition\\datapacks\\Skyblock Classic Edition\\data\\skyblock\\functions\\multiplayer.mcfunction\""}}]
execute as @a[scores={multiplayer_popup=5000000..}] run scoreboard players set @a multiplayer_popup 0


##Server (Only activate if you are in multiplayer: here below)
#scoreboard objectives add multiplayer dummy