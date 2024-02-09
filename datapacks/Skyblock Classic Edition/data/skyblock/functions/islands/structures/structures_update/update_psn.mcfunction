#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update (1.20.5 - PSN 0)
execute as @a[scores={1.20.5_PSN_0=5}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={1.20.5_PSN_0=5}] run gamemode spectator @a
execute as @a[scores={1.20.5_PSN_0=5}] run effect give @a blindness 62 0 true
execute as @a[scores={1.20.5_PSN_0=6}] run effect give @a night_vision 61 0 true
execute as @a[scores={1.20.5_PSN_0=5..600}] run summon minecraft:area_effect_cloud ~ ~1 ~


##TELEPORT PLAYER IN THE STRUCTURES (AGGIUNGERE LE STRUTTURE)

#Mushroom House
execute as @a[scores={1.20.5_PSN_0=100}] run tp @a 0 45 1000 0 0

#Ocean Ruins
execute as @a[scores={1.20.5_PSN_0=200}] run tp @a 488 45 -260 0 0

#Cherry Grove
execute as @a[scores={1.20.5_PSN_0=300}] run tp @a -198 45 -485 0 0

#Trail Ruins
execute as @a[scores={1.20.5_PSN_0=400}] run tp @a -266 45 -484 0 0


##GENERATED STRUCTURES
execute as @a[scores={1.20.5_PSN_0=150}] run place template skyblock:structures/mushroom_house 0 45 1000
execute as @a[scores={1.20.5_PSN_0=250}] run place template skyblock:structures/ocean_ruins 488 45 -260
execute as @a[scores={1.20.5_PSN_0=350}] run place template skyblock:structures/cherry_grove -198 45 -485
execute as @a[scores={1.20.5_PSN_0=450}] run place template skyblock:structures/trail_ruins -266 45 -484


##FINAL FUNCTION STRUCTURES
execute as @a[scores={1.20.5_PSN_0=1}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.5_PSN_0=500}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.5_PSN_0=500}] run tp @s 0 66 0 90 0
execute as @a[scores={1.20.5_PSN_0=505}] run gamemode survival @a
execute as @a[scores={1.20.5_PSN_0=505}] run title @a times 20 100 20
execute as @a[scores={1.20.5_PSN_0=505}] run title @a title {"translate":"skyblock_classic_edition.generated_structures.loading.title","italic":true}
execute as @a[scores={1.20.5_PSN_0=505}] run title @a subtitle {"translate":"skyblock_classic_edition.generated_structures.loading.subtitle","italic":true}
execute as @a[scores={1.20.5_PSN_0=510}] run effect clear @a minecraft:blindness
execute as @a[scores={1.20.5_PSN_0=510}] run effect clear @a minecraft:night_vision
execute as @a[scores={1.20.5_PSN_0=515}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2


##Setup Update SUBPSN
scoreboard players add @a 1.20.5_PSN_0_1 1
#fare qui


##Setup Update SUBPID 0_1


##Scoreboard Start SUBPSN 0_1
#FARE


##SETUP PSN END (QUANDO FINISCE IL PSN AGGIUNGERE IL SUBPSN O IL PSN MA SOLO NEL PRIMO SUBPSN. GUARDARE SEMPRE LA SCORE ALLA FINE DELLA FUNZIONE, ANCHE NEL SUBPSN DENTRO LA FUNZIONE)
execute as @a[scores={1.20.5_PSN_0=1015..}] run scoreboard objectives add 1.20.3_PSN_0_1 dummy