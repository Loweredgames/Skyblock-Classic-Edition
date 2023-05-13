#Copyright (C) Loweredgames (Lorenzo Giannini) 
#<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License:https://github.com/Loweredgames/Skyblock-Classic-Edition/blob/main/LICENSE
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID Legacy Setup (Aggiornato all'ultima versione: 4.0.0 Minecraft: 1.19.4) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione.
execute as @a[scores={PID_legacy=1}] run gamemode spectator @a
scoreboard objectives add PID_legacy dummy
execute as @a[scores={PID_legacy=700}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
#scoreboard objectives setdisplay sidebar PID_legacy


##PID Legacy Versions (DA AGGIUNGERE IL PID NUOVO QUANDO E FINITO DI CONVERTIRE, SE C'E QUALCOSA DA AGGIORNARE, AUMENTA IL CONTATORE QUANDO LA PRECEDENTE CONVERSIONE FINISCE)
execute as @a[scores={PID_1=1..}] run scoreboard players set @a ID_5 1
execute as @a[scores={PID_1=1805..}] run scoreboard players set @a PID_0 1


##PID Update Old (AGGIUNGERE I PID VECCHI: ogni 3 versioni e poi l'ultima diventa incompatibile, quindi aggionare sempre in "update_pid")
execute as @a[scores={ID_5=1..}] run scoreboard players set @a PID_legacy 805
execute as @a[scores={PID_0=1..}] run scoreboard players add @a PID_legacy 1


##PID Remove (RIMUOVERE SOLO QUANDO E FINITO UN PID VECCHIO. CANCELLARE SOLO QUANDO E FINITA E AGGIORNARE IL CONTATORE)
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_5
execute as @a[scores={PID_legacy=805..}] run scoreboard objectives remove PID_0


##PID Legacy Update (AGGIUNGERE TUTTI I PID VECCHI, AGGIUNGERE SEMPRE UNA NUOVA CATEGORIA AD ESEMPIO #PID_2, #PID_3, ECC.)


#PID_Legacy
execute as @a[scores={ID_5=1..}] run scoreboard objectives remove PID_0


#PID_1
execute in minecraft:the_nether as @a[scores={PID_legacy=200}] run tp @a 0 -3 30
execute in minecraft:the_nether as @a[scores={PID_legacy=250}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={PID_legacy=300}] run setblock 0 3 31 oak_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry.."}','{"text":";("}','{"text":""}']}} destroy
execute in minecraft:the_nether as @a[scores={PID_legacy=400}] run scoreboard players set @a tp 1
execute as @a[scores={PID_legacy=450}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PID_legacy=500}] run scoreboard objectives add fix_end dummy
execute as @a[scores={PID_legacy=501..600}] run gamemode spectator @a
execute as @a[scores={PID_legacy=600}] in minecraft:overworld run tp @a 0 66 0
execute as @a[scores={PID_legacy=700}] run setblock 0 62 0 minecraft:black_concrete
execute as @a[scores={PID_legacy=730}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_legacy=730}] run advancement revoke @a only minecraft:nether/root
execute in minecraft:overworld at @a[scores={PID_legacy=800}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_legacy=800}] run gamemode survival @a


##PID Legacy Stop (QUANDO FINISCE: CAMBIARE IL NUMERO PER RESETARE TUTTO, AGGIORNARE SEMPRE NELLE NUOVE VERSIONI)
execute as @a[scores={PID_1=1..801}] run scoreboard players set @a PID_legacy 0
execute as @a[scores={PID_1=1..801}] run scoreboard players set @a ID_5 0
execute as @a[scores={PID_1=1..801}] run scoreboard players set @a PID_0 0


##PID Legacy Structures (PER IL LIBRO QUANDO SI CONVERTE IL MONDO IN UNA VECCHIA VERSIONE)
execute as @a[scores={PID_legacy=730}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={PID_legacy=731}] run scoreboard players set @a SkyblockCE_structures 8