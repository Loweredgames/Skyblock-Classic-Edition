##PID Legacy Setup (Aggiornato all'ultima versione: 4.0.0) Ricordati di aggiornare UPDATE ID e di aggiungere l'ultima conversione.
scoreboard objectives add PID_legacy dummy
execute as @a[scores={PID_legacy=100..}] run scoreboard players reset @a PID_legacy
#scoreboard objectives setdisplay sidebar PID_legacy


##PID Legacy Versions (DA AGGIUNGERE IL NUMERO SOLO SE C'è QUALCOSA DA AGGIORANRE)
execute as @a[scores={PID_0=10000..}] run scoreboard players set @a ID_1 1
execute as @a[scores={PID_0=10000..}] run scoreboard players set @a ID_2 1
execute as @a[scores={PID_0=10000..}] run scoreboard players set @a ID_3 1
execute as @a[scores={PID_0=10000..}] run scoreboard players set @a ID_4 1
execute as @a[scores={PID_0=10000..}] run scoreboard players set @a ID_5 1


##PID update old
execute as @a[scores={ID_1=0..}] run scoreboard players add @a PID_legacy 1
execute as @a[scores={ID_2=0..}] run scoreboard players add @a PID_legacy 1
execute as @a[scores={ID_3=0..}] run scoreboard players add @a PID_legacy 1
execute as @a[scores={ID_4=0..}] run scoreboard players add @a PID_legacy 1
execute as @a[scores={ID_5=0..}] run scoreboard players add @a PID_legacy 1


##PID remove
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_1
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_2
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_3
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_4
execute as @a[scores={PID_legacy=100..}] run scoreboard objectives remove ID_5


##PID legacy update
execute as @a[scores={PID_legacy=5}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"gray"}
###NOTA da aggiungere nella 1.20 :), nella funzione update_id. rimuovere il vecchio PID_0 e sostituire PID 1. non rimuovere ID_5
##Aggiungere sotto PID_0