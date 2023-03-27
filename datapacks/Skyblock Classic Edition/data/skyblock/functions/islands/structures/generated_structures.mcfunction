##Structure Setup
execute as @a[scores={PSN_0=1}] run scoreboard players set @a tp 0
execute as @a[scores={PSN_0=1}] run gamemode spectator @a
execute as @a[scores={PSN_0=2}] run effect give @a blindness 52 0 true
execute as @a[scores={PSN_0=3}] run effect give @a night_vision 51 0 true
execute as @a[scores={PSN_0=2000000..}] run scoreboard players set @a PSN_0 10000
scoreboard players add @a PSN_0 1
scoreboard players add @a structure_skyblock 1


##PSN_0 (AGGIORNARE SEMPRE CON PID)
execute as @a[scores={structure_skyblock=3}] run scoreboard objectives add PSN_0 dummy
execute as @a[scores={structure_skyblock=10..50}] run scoreboard objectives remove structure_skyblock
execute as @a[scores={structure_skyblock=1005}] run give @s written_book{tag:generated_structures,pages:['["",{"text":"Info:","bold":true,"underlined":true},{"text":"\\n\\nBefore adding the structures in the world, check if there are any constructions you have made within the custom structures area. add the (Generated) folder in the world."},{"text":" ","color":"reset"},{"text":"\\n\\u26a0 If not spawn the structures in the world \\u26a0","italic":true,"underlined":true,"color":"red"}]','["",{"text":"Go to the next pages to see all coordinates, remember activate the coordinated with F3.\\n\\n\\n\\n"},{"text":"Yes I understand and I\'m ready immediately.","bold":true,"italic":true,"color":"red","clickEvent":{"action":"change_page","value":"5"}}]','["",{"text":"Custom Structures:","bold":true,"underlined":true},{"text":"\\n\\nPillager Outpost: ","color":"reset"},{"text":"500 45 55","underlined":true},{"text":"\\n\\nVillage: ","color":"reset"},{"text":"460 45 350","underlined":true},{"text":"\\n\\nSwamp Hut: ","color":"reset"},{"text":"-180 45 -180","underlined":true},{"text":"\\n\\nIgloo: ","color":"reset"},{"text":"180 45 180","underlined":true}]','["",{"text":"Jungle Pyramids: "},{"text":"-60 45 500","underlined":true},{"text":"\\n\\nDesert Pyramid: ","color":"reset"},{"text":"60 45 -500","underlined":true},{"text":"\\n\\nShipwrecks: ","color":"reset"},{"text":"280 45 0","underlined":true},{"text":"\\n\\nStronghold: ","color":"reset"},{"text":"800 45 800","underlined":true},{"text":"\\n\\nAncient City: ","color":"reset"},{"text":"-800 45 -800","underlined":true}]','["",{"text":"Generated:\\n\\n","bold":true,"underlined":true},{"text":"\\u26a0I am ready to generate all structures\\u26a0","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives add PSN_0 dummy"}}]'],title:"Custom Structures",author:"Conversion of Structures: 1.5.0"}
execute as @a[scores={structure_skyblock=2000..}] run scoreboard objectives remove structure_skyblock


##Teleport Players

#Pillager Outpost
execute as @a[scores={PSN_0=100}] run tp @a 500 45 55 0 0

#Village
execute as @a[scores={PSN_0=200}] run tp @a 460 45 350 0 0

#Swamp Hut
execute as @a[scores={PSN_0=300}] run tp @a -180 45 -180 0 0

#Igloo
execute as @a[scores={PSN_0=400}] run tp @a 180 45 180 0 0

#Jungle Pyramids
execute as @a[scores={PSN_0=500}] run tp @a -60 45 500 0 0

#Desert Pyramid
execute as @a[scores={PSN_0=600}] run tp @a 60 45 -500 0 0

#Shipwrecks
execute as @a[scores={PSN_0=700}] run tp @a 280 45 0 0 0

#Stronghold
execute as @a[scores={PSN_0=800}] run tp @a 700 45 700 0 0

#Ancient City
execute as @a[scores={PSN_0=900}] run tp @a -700 45 -700 0 0


##Generated
execute as @a[scores={PSN_0=150}] run place template skyblock:structures/pillager_outpost 500 45 55
execute as @a[scores={PSN_0=250}] run place template skyblock:structures/village 460 45 350
execute as @a[scores={PSN_0=350}] run place template skyblock:structures/swamp_hut -180 45 -180
execute as @a[scores={PSN_0=450}] run place template skyblock:structures/igloo 180 45 180
execute as @a[scores={PSN_0=550}] run place template skyblock:structures/jungle_pyramids -60 45 500
execute as @a[scores={PSN_0=650}] run place template skyblock:structures/desert_pyramid 60 45 -500
execute as @a[scores={PSN_0=750}] run place template skyblock:structures/shipwrecks 280 45 0
execute as @a[scores={PSN_0=850}] run place template skyblock:structures/stronghold 700 45 700
execute as @a[scores={PSN_0=950}] run place template skyblock:structures/ancient_city -700 45 -700


##Final Function
execute as @a[scores={PSN_0=1000}] run tp @s 0 66 0 90 0
execute as @a[scores={PSN_0=1005}] run gamemode survival @a
execute as @a[scores={PSN_0=1005}] run title @a times 20 100 20
execute as @a[scores={PSN_0=1005}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={PSN_0=1005}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={PSN_0=1000..5000}] run clear @a written_book{tag:generated_structures}
execute as @a[scores={PSN_0=1000..1900}] run place template skyblock:air 0 0 0
execute as @a[scores={PSN_0=1800}] run setblock 0 0 0 minecraft:command_block[conditional=false,facing=west]{Command:'/tellraw @a [{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.info","italic":true,"color":"red"},[""],{"translate":"skyblock_classic_edition.generated_structures.generated.command_block.download","italic":true,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition/releases"}},{"text":".\\u26a0","italic":true,"color":"red"}]',CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute as @a[scores={PSN_0=1801}] run tellraw @a ["",{"text":"If the resource pack is not in the world and can cause damage to the text: add the resource pack in the world folder or ","italic":true,"color":"gray"},{"text":"reinstall the map here","italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases"}},{"text":" and add manually in the world folder.","italic":true,"color":"gray"}]
execute as @a[scores={PSN_0=1810}] run setblock 0 1 0 minecraft:redstone_block destroy
execute as @a[scores={PSN_0=1900}] run fill 0 0 0 0 1 0 minecraft:air destroy