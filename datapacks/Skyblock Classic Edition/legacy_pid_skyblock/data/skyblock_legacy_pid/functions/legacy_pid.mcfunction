#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PID Legacy Versions (DA AGGIUNGERE IL PID NUOVO QUANDO E FINITO DI CONVERTIRE, SE C'E QUALCOSA DA AGGIORNARE, AUMENTA IL CONTATORE QUANDO LA PRECEDENTE CONVERSIONE FINISCE)
execute as @a[scores={PID_1=-100..}] run scoreboard players set @a ID_5 1
execute as @a[scores={PID_1=-100..}] run scoreboard players set @a PID_0 1


##PID Update Old (AGGIUNGERE I PID VECCHI: ogni 3 versioni e poi l'ultima diventa incompatibile, quindi aggionare sempre in "update_pid")
execute as @a[scores={ID_5=1..}] run scoreboard players set @a PID_legacy 705
execute as @a[scores={PID_0=1..}] run scoreboard players add @a PID_legacy 1


##PID Remove (RIMUOVERE SOLO QUANDO E FINITO UN PID VECCHIO. CANCELLARE SOLO QUANDO E FINITA E AGGIORNARE IL CONTATORE)
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_5
execute as @a[scores={PID_legacy=805..}] run scoreboard objectives remove PID_0


##PID Legacy Setup (Aggiornato all'ultima versione: 5.1.2 Minecraft: 1.20.4) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione. ricordarsi di rimuovere i pid secondari come PID_1_1 nella stessa categoria.
scoreboard objectives add PID_legacy dummy
execute as @a[scores={PID_legacy=1..50}] run gamemode spectator @a
execute as @a[scores={PID_legacy=10..600}] run effect give @a blindness 11 0 true
execute as @a[scores={PID_legacy=10..600}] run effect give @a night_vision 11 0 true
execute as @a[scores={PID_legacy=1..801}] run summon minecraft:area_effect_cloud ~ ~1 ~
execute as @a[scores={PID_legacy=740}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2


###PID Legacy Update (AGGIUNGERE TUTTI I PID VECCHI, AGGIUNGERE SEMPRE UNA NUOVA CATEGORIA AD ESEMPIO #PID_2, #PID_3, ECC.)


##ID_5 (COMPATIBILITA LEGACY)
execute as @a[scores={ID_5=1..}] run scoreboard objectives remove PID_0


##PID_0 - 1.20.4 (LTS FINO A PID_2, NON RIMUOVERE IL COMMENTO IN SE, AGGIUNGERE QUESTO COMMENTO NEI NUOVI PID)


##The Nether
execute in minecraft:the_nether as @a[scores={PID_legacy=200}] run tp @a 0 -3 30
execute in minecraft:the_nether as @a[scores={PID_legacy=250}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={PID_legacy=300}] run setblock 0 3 31 oak_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"The portal is"}','{"text":"broken sorry.."}','{"text":";("}','{"text":"since: 1.0.0"}']}} destroy
execute in minecraft:the_nether as @a[scores={PID_legacy=400}] run scoreboard players set @a SkyblockCE_tp 1
execute as @a[scores={PID_legacy=450}] run scoreboard players set @a SkyblockCE_tp 0
execute as @a[scores={PID_legacy=501..600}] run gamemode spectator @a
execute as @a[scores={PID_legacy=600}] in minecraft:overworld run tp @a 0 66 0
execute in minecraft:overworld as @a[scores={PID_legacy=650}] run setblock 0 62 0 minecraft:black_concrete keep
#>execute as @a[scores={PID_legacy=730}] run advancement revoke @a only minecraft:end/root (da riaggiungere in futuro)
execute as @a[scores={PID_legacy=730}] run advancement revoke @a only minecraft:nether/root


##PID Legacy Stop (QUANDO FINISCE: CAMBIARE IL NUMERO PER RESETARE TUTTO, AGGIUNGERE SEMPRE NELLE NUOVE VERSIONI IL PID)
execute as @a[scores={PID_0=1..}] run scoreboard players set @a PID_1 -100


##PID Legacy Structures (PER IL LIBRO QUANDO SI CONVERTE IL MONDO IN UNA VECCHIA VERSIONE)
execute as @a[scores={PID_legacy=730}] run scoreboard objectives add SkyblockCE_structures dummy
execute as @a[scores={PID_legacy=731}] run scoreboard players set @a SkyblockCE_structures 8