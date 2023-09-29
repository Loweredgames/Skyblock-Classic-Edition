#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Structure Setup
scoreboard players add @a PSN_legacy 1
scoreboard players add @a SkyblockCE_structures 1
execute as @a[scores={PSN_legacy=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PSN_legacy=5}] run gamemode spectator @a
execute as @a[scores={PSN_legacy=5}] run effect give @a blindness 62 0 true
execute as @a[scores={PSN_legacy=6}] run effect give @a night_vision 61 0 true
execute as @a[scores={PSN_legacy=5..2000}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PSN_legacy=2000000..}] run scoreboard players set @a PSN_legacy 10000


##PSN_legacy (AGGIORNARE SEMPRE CON PID E AUMENTARE IL VALORE QUANDO VIENE AGGIUNTA UNA NUOVA STRUTTURA)
execute as @a[scores={SkyblockCE_structures=5}] run scoreboard objectives add PSN_legacy dummy
execute as @a[scores={SkyblockCE_structures=10}] run give @s written_book{tag:generated_book,pages:['["",{"text":"Info:","bold":true,"underlined":true},{"text":"\\n\\nBefore adding the structures in the world, check if there are any constructions you have made within the custom structures area. add the (Generated) folder in the world."},{"text":" ","color":"reset"},{"text":"\\n\\u26a0 If not spawn the structures in the world \\u26a0","italic":true,"underlined":true,"color":"red"}]','["",{"text":"Go to the next pages to see all coordinates, remember activate the coordinated with F3.\\n\\n\\n\\n"},{"text":"Yes I understand and I\'m ready immediately.","bold":true,"italic":true,"color":"red","clickEvent":{"action":"change_page","value":"5"}}]','["",{"text":"Custom Structures:","bold":true,"underlined":true},{"text":"\\n\\nMushroom House: ","color":"reset"},{"text":"0 45 1000","underlined":true},{"text":"\\n\\nOcean Ruins: ","color":"reset"},{"text":"488 45 -260","underlined":true},{"text":"\\n\\nCherry Grove: ","color":"reset"},{"text":"-198 45 -485","underlined":true},{"text":"\\n\\nTrail Ruins: ","color":"reset"},{"text":"-266 45 -484","underlined":true}]','["",{"text":"Generated:\\n\\n","bold":true,"underlined":true},{"text":"\\u26a0I am ready to generate all structures\\u26a0","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives add PSN_0 dummy"}}]'],title:"Custom Structures",author:"Custom Structures Version: 2.0.0"}
execute as @a[scores={SkyblockCE_structures=15..20}] run scoreboard objectives remove SkyblockCE_structures


##SkyblockCE_id (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID_X PER LE FUNZIONI default/large/small)
#>INTEGRARE IN FUTURO NELLA FUNZIONE Strutture. forse 1.21?
execute as @a[scores={SkyblockCE_large=1360}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_default=1360}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_small=1360}] run scoreboard objectives add SkyblockCE_id dummy


##Teleport Players Structures (AGGIUNGERE LE VECCHIE STRUTTURE)

#Pillager Outpost
execute as @a[scores={PSN_legacy=100}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={PSN_legacy=200}] run tp @a 460 45 350 0 0

#Swamp Hut
execute as @a[scores={PSN_legacy=300}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={PSN_legacy=400}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={PSN_legacy=500}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={PSN_legacy=600}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={PSN_legacy=700}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={PSN_legacy=800}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={PSN_legacy=900}] run tp @a -700 45 -700 0 0


##Generated Structures
execute as @a[scores={PSN_legacy=150}] run place template skyblock:structures/pillager_outpost 500 45 55
execute as @a[scores={PSN_legacy=250}] run place template skyblock:structures/village 460 45 350
execute as @a[scores={PSN_legacy=350}] run place template skyblock:structures/swamp_hut -180 45 -180
execute as @a[scores={PSN_legacy=450}] run place template skyblock:structures/igloo 180 45 180
execute as @a[scores={PSN_legacy=550}] run place template skyblock:structures/jungle_pyramids -60 45 500
execute as @a[scores={PSN_legacy=650}] run place template skyblock:structures/desert_pyramid 60 45 -500
execute as @a[scores={PSN_legacy=750}] run place template skyblock:structures/shipwrecks 280 45 0
execute as @a[scores={PSN_legacy=850}] run place template skyblock:structures/stronghold 700 45 700
execute as @a[scores={PSN_legacy=950}] run place template skyblock:structures/ancient_city -700 45 -700


##Start PSN_0 (DELAY PER PID_0)
execute as @a[scores={PSN_legacy=1000}] run scoreboard objectives add PSN_0 dummy
execute as @a[scores={PSN_legacy=1005}] run scoreboard players set @a PSN_0 -250


##Multiplayer PSN LEGACY
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_structures 25
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_legacy 24000


##Final Function Structures
execute as @a[scores={PSN_legacy=1}] run gamerule doImmediateRespawn true
execute as @a[scores={PSN_legacy=1000}] run gamerule doImmediateRespawn false
execute as @a[scores={PSN_legacy=1000}] run tp @s 0 66 0 90 0
execute as @a[scores={PSN_legacy=1005}] run gamemode survival @a
execute as @a[scores={PSN_legacy=1005}] run title @a times 20 100 20
execute as @a[scores={PSN_legacy=1005}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={PSN_legacy=1005}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={PSN_legacy=1..7000}] run clear @a written_book{tag:generated_book}
execute as @a[scores={PSN_legacy=1000..1900}] run place template skyblock:air 0 0 0
execute as @a[scores={PSN_legacy=1800}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":".\\u26a0","italic":true,"color":"red"}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={PSN_legacy=1801}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={PSN_legacy=1810}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={PSN_legacy=2000}] run fill 0 0 0 0 1 0 minecraft:air destroy