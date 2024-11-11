#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##FIX FUNCTION CUSTOM WORLD (FA UN TP PER RISOLVERE IL PROBLEMA, CREARE LA SCOREBOARD PER FARLO FUNZIONARE)
scoreboard players add @a fix_custom_world 1
execute as @a[scores={fix_custom_world=0..50}] run execute in minecraft:overworld run tp @a 0 64 0 90 0
execute as @a[scores={fix_custom_world=0..50}] run tellraw @a {"translate":"skyblock_classic_edition.loading.chat"}
execute as @a[scores={fix_custom_world=1..50}] run gamemode spectator @a
execute as @a[scores={fix_custom_world=0..1}] run setblock 0 63 0 minecraft:air destroy
execute as @a[scores={fix_custom_world=0..1}] run setblock 0 64 0 minecraft:air destroy
execute as @a[scores={fix_custom_world=50..51}] run difficulty normal
execute as @a[scores={fix_custom_world=50..51}] run effect give @a resistance 11 255 true
execute as @a[scores={fix_custom_world=50..51}] run gamemode survival @a
execute as @a[scores={fix_custom_world=51..}] run scoreboard objectives remove fix_custom_world