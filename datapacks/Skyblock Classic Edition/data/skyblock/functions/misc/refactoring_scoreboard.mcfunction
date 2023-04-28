##Refactoring Scoreboard (provissorio, da eliminare nella 1.21)


#Setup Refactoring Scoreboard
scoreboard objectives setdisplay sidebar refactoring_scoreboard
execute as @a[scores={refactoring_scoreboard=2000000..}] run scoreboard players set @a refactoring_scoreboard 10000
scoreboard objectives add refactoring_scoreboard dummy
scoreboard players add @a refactoring_scoreboard 1


#Start
execute as @a[scores={refactoring_scoreboard=1}] run me :)