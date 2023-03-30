##World Update and Conversion


#Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_1=5}] run time set 0
execute as @a[scores={PID_1=1000}] run scoreboard objectives add structure_skyblock dummy
execute as @a[scores={PID_1=1000..1005}] run scoreboard players set @a structure_skyblock 1000
execute as @a[scores={PID_1=11}] run gamemode spectator @a


#PID Legacy Remove (RIMUOVE LA SCORE DOPO LA CONVERSIONE)
execute as @a[scores={PID_1=3000..}] run scoreboard objectives remove PID_legacy


##PID_1 (SPOSTARE "PID_X" IN LEGACY, NON ELIMINARE IL COMMENTO IN SE)
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_1=1701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_1=..1800}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_1=1801}] run time set 0
execute as @a[scores={PID_1=1801}] run gamemode survival @a
execute in minecraft:overworld at @a[scores={PID_1=800}] run tp @a 0 66 0 90 0
execute as @a[scores={PID_1=1803}] run me end