#---SETUP-BUILDING---#

#Setup

bossbar add building {"text":"BUILDING","color":"white","bold":true}
bossbar set minecraft:building players @a
bossbar set minecraft:building color green
bossbar set minecraft:building style progress
bossbar set minecraft:building max 100

#Version Number

bossbar set building name {"text":"JE-1.20-pre-1-Skyblock_Classic_Edition:BUILDING:14.05.2023a","color":"white","bold":true}

#Map Progress

bossbar set minecraft:building value 80

#Warning Message

title @a actionbar {"translate":"skyblock_classic_edition.building.warning","bold":true,"color":"dark_red"}

#Bossbar Visible

bossbar set minecraft:building visible true
