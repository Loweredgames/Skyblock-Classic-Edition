#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##SETUP UPDATE (1.20.5 - PSN 0) - DA LASCIARE COSI FINO ALLA NUOVA VERSIONE
execute as @a[scores={1.20.5_PSN_0=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={1.20.5_PSN_0=5}] run gamemode spectator @a
execute as @a[scores={1.20.5_PSN_0=5}] run effect give @a blindness 62 0 true
execute as @a[scores={1.20.5_PSN_0=6}] run effect give @a night_vision 61 0 true
execute as @a[scores={1.20.5_PSN_0=5..600}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={1.20.5_PSN_0=5..600}] run clear @a written_book[custom_data={tag:generated_book}]


##SKYBLOCK PSN VERSION WARNING (CAMBIARE SOLO SE NON CI SONO AGGIORNAMENTI NELLE STRUTTURE. LASCIARE COSI IL TITLE TIMES)
execute as @a[scores={1.20.5_PSN_0=10}] run title @a times 20 100 20
execute as @a[scores={1.20.5_PSN_0=15}] run title @a title {"translate":"skyblock_classic_edition.loading.title.chat","italic":true,"color":"#d5d5d5"}
#execute as @a[scores={1.20.5_PSN_0=15}] run title @a title {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"#d5d5d5"}


##PSN LEGACY VERSIONS SETUP (PER LE VECCHIE VERSIONI)
scoreboard objectives add PSN_legacy dummy
scoreboard players add @a SkyblockCE_generated_book 1


##PSN LEGACY VERSIONS (DA AGGIUNGERE IL PSN VECCHIO. CONTROLARE IL DELAY IN UPDATE_PSN)
execute as @a[scores={PSN_0=1000..}] run scoreboard players set @a PSN_0 -1
execute as @a[scores={PSN_0=-1}] run scoreboard players add @a PSN_legacy 1


##GIVE BOOK - PSN 0 (DA IL LIBRO AL GIOCATORE PER AGGIORNARE I MONDI VECCHI)
#execute as @a[scores={PSN_legacy=5}] run scoreboard objectives add SkyblockCE_generated_book dummy (da fare)
#execute as @a[scores={SkyblockCE_generated_book=10}] run give @s written_book[custom_data={tag:generated_book},written_book_content={title:"Custom Structures Book",author:"Custom Structures Version: PSN 0 - 1.20.5",pages:['[{"text":"Info:\\n\\n","color":"black","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"black"}]}},{"text":"Before adding the structures in the world, check if there are any constructions you have made within the custom structures area.","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"black"}]}}]','{"text":"Add the (Generated) folder in the world. If not spawn the structures in the world.","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"Go to the next pages to see all coordinates. remember activate the coordinated with F3.\\n\\n\\n","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Yes I understand and I\'m ready immediately","color":"red","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"change_page","value":"5"}}]','[{"text":"Custom Structures:","color":"black","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nMushroom House: 0 45 1000","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nOcean Ruins: 488 45 -260","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nCherry Grove: -198 45 -485","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nTrail Ruins: -266 45 -484","color":"black","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Generated:\\n\\n\\n\\n\\n","color":"black","bold":true,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"⚠ I am ready to generate all structures ⚠","color":"red","bold":true,"italic":true,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/scoreboard objectives add 1.20.5_PSN_0 dummy"}}]']}] 1
execute as @a[scores={SkyblockCE_generated_book=15..}] run scoreboard objectives remove SkyblockCE_generated_book


##PSN LEGACY REMOVE (RIMUOVERE SOLO QUANDO E FINITO UN PSN VECCHIO)
execute as @a[scores={PSN_legacy=100..}] run scoreboard objectives remove PSN_0
execute as @a[scores={SkyblockCE_structures_id=13000..14000}] run scoreboard objectives remove PSN_legacy


##MULTIPLAYER PSN (PER IL MULTIPLAYER, NON TOCCARE)
execute as @a[scores={SkyblockCE_multiplayer_reset=-1}] run scoreboard players set @a 1.20.5_PSN_0 10000


##SKYBLOCK FINAL GENERATED ISLANDS DELAY (GENERA LA POSIZIONE DEL GIOCATORE QUANDO SONO FINITE LE SCORE, DA CAMBIARE SE IL PSN E PIU LUNGO)
execute as @a[scores={1.20.5_PSN_0=605}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={1.20.5_PSN_0=606}] run title @a title ["",{"text":"Sky","bold":true,"color":"aqua"},{"text":"block","bold":true,"color":"dark_green"}]
execute as @a[scores={1.20.5_PSN_0=606}] run title @a subtitle {"text":"Classic Edition","bold":true,"color":"dark_blue"}
execute as @a[scores={1.20.5_PSN_0=606}] run title @a times 30 100 30
execute as @a[scores={1.20.5_PSN_0=605..707}] run gamerule announceAdvancements true
execute as @a[scores={1.20.5_PSN_0=605..707}] run gamerule doDaylightCycle true
execute as @a[scores={1.20.5_PSN_0=605..707}] run gamerule doWeatherCycle true
execute as @a[scores={1.20.5_PSN_0=605..707}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.5_PSN_0=610}] run time set 0
execute as @a[scores={1.20.5_PSN_0=610}] run advancement revoke @a everything
execute as @a[scores={1.20.5_PSN_0=620}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={1.20.5_PSN_0=621}] run gamemode survival @a
execute as @a[scores={1.20.5_PSN_0=630}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.5_PSN_0=635}] run scoreboard objectives remove SkyblockCE_level_dat


##SKYBLOCK ID DELAY (AGGIORNARE SEMPRE QUANDO VENGONO AGGIUNTE NUOVE STRUTTURE. DELAY PID DELLA CONVERSIONE)
execute as @a[scores={1.20.5_PSN_0=600}] run scoreboard objectives add SkyblockCE_id dummy


##TELEPORT PLAYER IN THE NEW STRUCTURES (AGGIUNGERE LE NUOVE STRUTTURE. RICORDARSI DI AGGIUNGERLE NEL LIBRO ALLA FINE)

#Ocean Ruins
execute as @a[scores={1.20.5_PSN_0=100}] run tp @a 488 45 -260 0 0

#Cherry Grove
execute as @a[scores={1.20.5_PSN_0=200}] run tp @a -198 45 -485 0 0

#Trail Ruins
execute as @a[scores={1.20.5_PSN_0=300}] run tp @a -266 45 -484 0 0


##GENERATED NEW STRUCTURES
execute as @a[scores={1.20.5_PSN_0=150}] run place template skyblock:structures/ocean_ruins 488 45 -260
execute as @a[scores={1.20.5_PSN_0=250}] run place template skyblock:structures/cherry_grove -198 45 -485
execute as @a[scores={1.20.5_PSN_0=350}] run place template skyblock:structures/trail_ruins -266 45 -484


##FINAL FUNCTION GENERATED NEW STRUCTURES
execute as @a[scores={1.20.5_PSN_0=1}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.5_PSN_0=500}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.5_PSN_0=500}] run execute in minecraft:overworld run tp @p 0 66 0 90 0
execute as @a[scores={1.20.5_PSN_0=505}] run title @a times 20 100 20
execute as @a[scores={1.20.5_PSN_0=505}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={1.20.5_PSN_0=505}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={1.20.5_PSN_0=510}] run effect clear @a minecraft:blindness
execute as @a[scores={1.20.5_PSN_0=510}] run effect clear @a minecraft:night_vision


##Setup Update SUBPSN (DA FARE)
#scoreboard players add @a 1.20.5_PSN_0_1 1
#fare qui LTS


##Setup Update SUBPID 0_1
#LTS

##Scoreboard Start SUBPSN 0_1
#FARE


##SETUP PSN END (QUANDO FINISCE IL PSN AGGIUNGERE IL SUBPSN, AGGIUNGERE L'ULTIMA VERSIONE SUBPID? FORSE. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPSN DENTRO LA FUNZIONE)
#per LTS
#execute as @a[scores={1.20.5_PSN_0=620..}] run scoreboard objectives add 1.20.5_PSN_0_1 dummy
#execute as @a[scores={1.20.5_PID_1_4=620..}] run scoreboard objectives add 1.20.5_PSN_0_1 dummy


##Setup Update (1.20.5 - PSN 1) comming...