#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP STRUCTURES ID (CAMBIARE IL NUMERO DELLA VERSIONE SE CI SONO NUOVE VERSIONI)
execute as @a[scores={SkyblockCE_structures_id=30}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={SkyblockCE_structures_id=1..2400}] run clear @a written_book{tag:generated_book}


##FUNCTION STRUCTURES LOOP
execute as @a[scores={SkyblockCE_structures=2000000..}] run scoreboard players set @a SkyblockCE_structures 10000
execute as @a[scores={SkyblockCE_structures_id=2000000..}] run scoreboard players set @a SkyblockCE_structures_id 10000
execute as @a[scores={1.20.5_PSN_0=2000000..}] run scoreboard players set @a 1.20.5_PSN_0 10000


##STRUCTURES SETUP
scoreboard players add @a SkyblockCE_structures 1
execute as @a[scores={SkyblockCE_structures=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={SkyblockCE_structures=5}] run gamemode spectator @a
execute as @a[scores={SkyblockCE_structures=5}] run effect give @a blindness 62 0 true
execute as @a[scores={SkyblockCE_structures=6}] run effect give @a night_vision 61 0 true
execute as @a[scores={SkyblockCE_structures=5..2000}] run summon minecraft:area_effect_cloud ~ ~1 ~


##STRUCTURES PSN SETUP
execute as @a[scores={SkyblockCE_structures=5..}] run scoreboard objectives add 1.20.5_PSN_0 dummy
scoreboard players add @a 1.20.5_PSN_0 1


##GIVE BOOK PSN
execute as @a[scores={1.20.5_PSN_0=5}] run scoreboard objectives add SkyblockCE_generated_book dummy


##1.20.5 PSN 0 (AGGIORNARE SEMPRE CON PID E AUMENTARE IL VALORE QUANDO VIENE AGGIUNTA UNA NUOVA STRUTTURA)
execute as @a[scores={SkyblockCE_generated_book=10}] run give @s written_book{tag:generated_book,title:"Custom Structures Book",author:"Custom Structures Version: 1.20.5 PSN 0",pages:['[{"text":"Info:\\n\\n","color":"black","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"black"}]}},{"text":"Before adding the structures in the world, check if there are any constructions you have made within the custom structures area.","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"black"}]}}]','{"text":"Add the (Generated) folder in the world. If not spawn the structures in the world.","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"Go to the next pages to see all coordinates. remember activate the coordinated with F3.\\n\\n\\n","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Yes I understand and I\'m ready immediately","color":"red","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"change_page","value":"5"}}]','[{"text":"Custom Structures:","color":"black","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nMushroom House: 0 45 1000","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nOcean Ruins: 488 45 -260","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nCherry Grove: -198 45 -485","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nTrail Ruins: -266 45 -484","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Generated:\\n\\n\\n\\n\\n","color":"black","bold":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"⚠ I am ready to generate all structures ⚠","color":"red","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/scoreboard objectives add 1.20.5_PSN_0 dummy"}}]']} 1
execute as @a[scores={SkyblockCE_generated_book=15..}] run scoreboard objectives remove SkyblockCE_generated_book


##SkyblockCE ID (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID_X PER LE FUNZIONI default/large/small)
#>INTEGRARE IN FUTURO NELLA FUNZIONE Strutture.
execute as @a[scores={SkyblockCE_large=1360}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_default=1360}] run scoreboard objectives add SkyblockCE_id dummy
execute as @a[scores={SkyblockCE_small=1360}] run scoreboard objectives add SkyblockCE_id dummy


##MULTIPLAYER PSN
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_0 -1
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a SkyblockCE_structures 100000
#DA RIMUOVERE PER LEGACYexecute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a PSN_legacy 24000


##TELEPORT PLAYER IN THE STRUCTURES

#Mushroom House
execute as @a[scores={SkyblockCE_structures=100}] run tp @a 0 45 1000 0 0

#Ocean Ruins
execute as @a[scores={SkyblockCE_structures=200}] run tp @a 488 45 -260 0 0

#Cherry Grove
execute as @a[scores={SkyblockCE_structures=300}] run tp @a -198 45 -485 0 0

#Trail Ruins
execute as @a[scores={SkyblockCE_structures=400}] run tp @a -266 45 -484 0 0


##GENERATED NEW STRUCTURES
execute as @a[scores={SkyblockCE_structures=150}] run place template skyblock:structures/mushroom_house 0 45 1000
execute as @a[scores={SkyblockCE_structures=250}] run place template skyblock:structures/ocean_ruins 488 45 -260
execute as @a[scores={SkyblockCE_structures=350}] run place template skyblock:structures/cherry_grove -198 45 -485
execute as @a[scores={SkyblockCE_structures=450}] run place template skyblock:structures/trail_ruins -266 45 -484


##FINAL FUNCTION NEW STRUCTURES
execute as @a[scores={SkyblockCE_structures=1}] run gamerule doImmediateRespawn true
execute as @a[scores={SkyblockCE_structures=500}] run gamerule doImmediateRespawn false
execute as @a[scores={SkyblockCE_structures=500..2001}] run clear @a written_book{tag:generated_book}
execute as @a[scores={SkyblockCE_structures=500}] run tp @s 0 66 0 90 0
execute as @a[scores={SkyblockCE_structures=505}] run gamemode survival @a
execute as @a[scores={SkyblockCE_structures=505}] run title @a times 20 100 20
execute as @a[scores={SkyblockCE_structures=505}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={SkyblockCE_structures=505}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={SkyblockCE_structures=510}] run effect clear @a minecraft:blindness
execute as @a[scores={SkyblockCE_structures=510}] run effect clear @a minecraft:night_vision
execute as @a[scores={SkyblockCE_structures=515}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2