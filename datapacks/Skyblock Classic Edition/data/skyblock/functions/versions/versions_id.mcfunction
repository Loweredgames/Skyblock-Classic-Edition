##Skyblock ID (LASCIARE SEMPRE LA SCOREBOARD)
scoreboard objectives add PID_0 dummy
scoreboard players add @a PID_0 1


##Skyblock ID e Install (AGGIORNARE SE L'ID E DIVERSO)
execute as @a[scores={PID_0=2000000..}] run scoreboard players set @a PID_0 10000
execute as @a[scores={skyblock_ID=30}] run scoreboard players set @a PID_0 -100
execute as @a[scores={skyblock_install=1..}] run scoreboard players set @a PID_0 -10000
execute as @a[scores={multiplayer=1..}] run scoreboard players set @a PID_0 -1
execute as @a[scores={skyblock_ID=200}] run scoreboard players reset @a multiplayer_popup


##Warning (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={PID_0=30}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.on","italic":true,"color":"gray"}
#execute as @a[scores={PID_0=40}] run tellraw @s {"translate":"skyblock_classic_edition.versions_id.warning_update.off","italic":true,"color":"gray"}


##Display (NON TOCCARE, SOLO DEBUG)
#scoreboard objectives setdisplay sidebar PID_0


##ID Versions (LASCIARE SEMPRE COSI)
function skyblock:versions/update_id