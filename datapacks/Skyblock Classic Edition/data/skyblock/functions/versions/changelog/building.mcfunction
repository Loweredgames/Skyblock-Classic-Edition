#---SETUP-BUILDING---#

#Setup

bossbar add building {"text":"BUILDING","color":"white","bold":true}
bossbar set minecraft:building players @a
bossbar set minecraft:building color green
bossbar set minecraft:building style progress
bossbar set minecraft:building max 100

#Version Number

bossbar set building name {"text":"JE-1.20.5-24w06a-Skyblock_Classic_Edition:BUILDING:13.02.2024a","color":"white","bold":true}

#Map Progress

bossbar set minecraft:building value 95

#Warning Message

title @a actionbar {"translate":"\u26a0Work in Progress\u26a0","bold":true,"color":"dark_red"}

#Bossbar Visible

bossbar set minecraft:building visible true
