##Default (Normal)


execute as @a[scores={skyblock_island=2}] run scoreboard objectives add skyblock_normal minecraft.custom:minecraft.play_time
execute as @a[scores={skyblock_island=2}] run tellraw @a {"translate":"skyblock_classic_edition.default.loading.chat"}
execute as @a[scores={skyblock_normal=1..}] run scoreboard players set @a skyblock_install -1
execute as @a[scores={skyblock_normal=1..}] run scoreboard players set @a skyblock_island -1


#Start
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run kill @e[type=!minecraft:player]
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run difficulty normal
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run gamerule commandBlockOutput false
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run title @a title {"translate":"skyblock_classic_edition.default.loading.title"}
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run title @a subtitle {"translate":"skyblock_classic_edition.default.loading.subtitle"}
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run title @a times 20 200 20
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run gamerule announceAdvancements false


##Overworld


#Classic
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run scoreboard players set @a tp 1
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run fill -7 80 -12 7 55 5 minecraft:air
execute in minecraft:overworld as @a[scores={skyblock_normal=1}] run fill 75 80 11 61 55 -9 minecraft:air
execute in minecraft:overworld as @a[scores={skyblock_normal=20}] run place template skyblock:classic -4 61 -6
execute in minecraft:overworld as @a[scores={skyblock_normal=33}] run setblock 1 66 -3 minecraft:birch_wall_sign[facing=south,waterlogged=false]{Color:"white",GlowingText:1b,Text1:'{"text":"Skyblock"}',Text2:'{"text":"Classic Edition"}',Text3:'{"text":"---------------"}',Text4:'{"text":"1.19.4"}'}
execute in minecraft:overworld as @a[scores={skyblock_normal=35}] run setblock 1 66 -2 minecraft:air


#Classic Desert
execute in minecraft:overworld as @a[scores={skyblock_normal=40}] run scoreboard players set @a tp 2
execute in minecraft:overworld as @a[scores={skyblock_normal=40}] run fill 58 56 7 79 74 -18 minecraft:air
execute in minecraft:overworld as @a[scores={skyblock_normal=50}] run place template skyblock:classic_desert 66 61 -4


##The Nether


#Nether Classic
execute in minecraft:overworld as @a[scores={skyblock_normal=57}] run scoreboard players set @a tp 3
execute in minecraft:the_nether as @a[scores={skyblock_normal=100}] run fill 17 65 43 -12 50 -8 minecraft:air
execute in minecraft:the_nether as @a[scores={skyblock_normal=100}] run fill 16 73 -53 -3 49 -44 minecraft:air
execute in minecraft:the_nether as @a[scores={skyblock_normal=105}] run place template skyblock:nether_classic 2 50 3


#Nether Classic Bastion
execute as @a[scores={skyblock_normal=120}] run scoreboard players set @a tp 4
execute in minecraft:the_nether as @a[scores={skyblock_normal=121}] run place template skyblock:nether_classic_bastion 4 55 33


#Nether Classic Forest
execute as @a[scores={skyblock_normal=130}] run scoreboard players set @a tp 5
execute in minecraft:the_nether as @a[scores={skyblock_normal=131}] run place template skyblock:nether_classic_forest -2 50 -50


#The End
## ??? ##


##Final Function
execute as @a[scores={skyblock_normal=150}] run scoreboard players set @a tp 1
execute as @a[scores={skyblock_normal=250}] run scoreboard objectives add structure_skyblock dummy
execute as @a[scores={skyblock_normal=1351}] run spawnpoint @a 0 65 0
execute as @a[scores={skyblock_normal=1351}] run weather clear 1000s
execute as @a[scores={skyblock_normal=1351}] run scoreboard objectives add kills deathCount
execute as @a[scores={skyblock_normal=1351}] run scoreboard objectives setdisplay list kills
execute as @a[scores={skyblock_normal=1355}] run scoreboard players set @a tp 0
execute as @a[scores={skyblock_normal=1356}] run scoreboard objectives add fix_end dummy
execute as @a[scores={skyblock_normal=1356}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={skyblock_normal=1356}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={skyblock_normal=1356}] run title @a times 30 100 30
execute as @a[scores={skyblock_normal=1357}] run gamerule announceAdvancements true
execute as @a[scores={skyblock_normal=1357}] run gamerule doDaylightCycle true
execute as @a[scores={skyblock_normal=1357}] run gamerule doWeatherCycle true
execute as @a[scores={skyblock_normal=1357}] run time set 0
execute as @a[scores={skyblock_normal=1360}] run gamemode survival @a
execute as @a[scores={skyblock_normal=1360}] run advancement revoke @a everything
execute as @a[scores={skyblock_normal=1360}] run scoreboard objectives add skyblock_ID dummy
execute as @a[scores={skyblock_normal=1360}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={skyblock_normal=1361}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={skyblock_normal=1360..2400}] run clear @a written_book{tag:generated_structures}