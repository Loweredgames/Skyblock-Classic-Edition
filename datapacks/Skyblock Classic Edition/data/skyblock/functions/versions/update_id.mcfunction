##World Update and Conversion
#Setup Update PID (NON ELIMINARE "Setup Update PID" E NON MODIFICARLO, DISATTIVA SOLO SE NON C'E LA CONVERSIONE)
execute as @a[scores={PID_0=5}] run time set 0
execute as @a[scores={PID_0=10}] run gamemode spectator @a


##PID_0 (PUOI ELIMINARE "pid_X" E AGGIORNARLO MA NON ELIMINARE IL COMMENTO IN SE)
execute in minecraft:the_nether as @a[scores={PID_0=200}] run tp @a 0 3 30
execute in minecraft:the_nether as @a[scores={PID_0=250}] run fill 2 2 33 -2 2 29 minecraft:infested_cobblestone destroy
execute in minecraft:the_nether as @a[scores={PID_0=300}] run setblock 0 3 31 minecraft:oak_sign[rotation=8,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":"The portal is"}',Text2:'{"text":"broken sorry.."}',Text3:'{"text":";("}',Text4:'{"text":""}'} destroy
execute in minecraft:the_nether as @a[scores={PID_0=400}] run scoreboard players set @a tp 1
execute as @a[scores={PID_0=410}] run give @s written_book{tag:generated_structures,pages:['["",{"text":"Info","bold":true,"underlined":true},{"text":"\\n\\nBefore adding structures to the world check if there are any constructions you have made within the custom structures area.\\n\\nRemember to add the file ","color":"reset"},{"text":"Generated","underlined":true},{"text":" ","color":"reset"},{"text":"\\u26a0if not do not spawn the islands\\u26a0)","italic":true,"underlined":true},{"text":".","color":"reset"}]','["",{"text":"Go to the next pages to see all the coordinated and remember to activate the coordinated with F3.\\n\\n\\n\\n"},{"text":"yes I understand and I\'m ready immediately.","bold":true,"italic":true,"color":"red","clickEvent":{"action":"change_page","value":"5"}}]','["",{"text":"Custom Structures","bold":true,"underlined":true},{"text":"\\n\\nPillager Outpost: ","color":"reset"},{"text":"500 45 55","underlined":true},{"text":"\\n\\nVillage: ","color":"reset"},{"text":"460 45 350","underlined":true},{"text":"\\n\\nSwamp Hut: ","color":"reset"},{"text":"-180 45 -180","underlined":true},{"text":"\\n\\nIgloo: ","color":"reset"},{"text":"180 45 180","underlined":true}]','["",{"text":"Jungle Pyramids: "},{"text":"-60 45 500","underlined":true},{"text":"\\n\\nDesert Pyramid: ","color":"reset"},{"text":"60 45 -500","underlined":true},{"text":"\\n\\nShipwrecks: ","color":"reset"},{"text":"280 45 0","underlined":true},{"text":"\\n\\nStronghold: ","color":"reset"},{"text":"800 45 800","underlined":true},{"text":"\\n\\nAncient City: ","color":"reset"},{"text":"-800 45 -800","underlined":true}]','["",{"text":"Generated\\n\\n\\n\\n","bold":true,"underlined":true},{"text":"\\u26a0I am ready to generate all the structures\\u26a0","bold":true,"italic":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives add structure_skyblock dummy"}}]'],title:"Custom Structures",author:"conversion to the last version of the datapack"}
execute as @a[scores={PID_0=450}] run scoreboard players set @a tp 0
execute as @a[scores={PID_0=500}] run scoreboard objectives add fix_end dummy
execute as @a[scores={PID_0=501..600}] run gamemode spectator @a
execute as @a[scores={PID_0=600}] in minecraft:overworld run tp @a 0 66 0
execute as @a[scores={PID_0=700}] run setblock 0 62 0 minecraft:black_concrete
execute as @a[scores={PID_0=700}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={PID_0=730}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={PID_0=730}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={PID_0=700}] run tellraw @a ["",{"text":"Announcement:","bold":true,"color":"#FF00FF"},{"text":" The world does not use experimental data packs, you always have to wait for the latest major release to use the latest features. you can still use them but at your own risk.","color":"#FF00FF"}]
execute as @a[scores={PID_0=701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.crowdin.info","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}}
execute as @a[scores={PID_0=701}] run tellraw @a {"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}}
execute as @a[scores={PID_0=..800}] run scoreboard objectives remove multiplayer_popup
execute as @a[scores={PID_0=801}] run time set 0
execute as @a[scores={PID_0=801}] run gamemode survival @a
execute in minecraft:overworld at @a[scores={PID_0=800}] run tp @a 0 66 0 90 0