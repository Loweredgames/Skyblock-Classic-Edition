#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##DEBUG SETUP (SOLO SVILUPPATORI)
scoreboard objectives add SkyOsirion_debug dummy
execute as @a[scores={SkyOsirion_debug=0}] run scoreboard objectives setdisplay sidebar SkyOsirion_debug


##TRANSLATE TEST DEBUG
execute as @a[scores={SkyOsirion_debug=-0}] run tellraw @a [{"translate":"skyblock_classic_edition.folder.test"}]


##DISPLAY DI DEBUG - SETUP SKYBLOCK
execute as @a[scores={SkyOsirion_debug=1}] run scoreboard objectives setdisplay sidebar SkyOsirion_install
execute as @a[scores={SkyOsirion_debug=2}] run scoreboard objectives setdisplay sidebar SkyOsirion_islands
execute as @a[scores={SkyOsirion_debug=3}] run scoreboard objectives setdisplay sidebar SkyOsirion_id
execute as @a[scores={SkyOsirion_debug=4}] run scoreboard objectives setdisplay sidebar SkyOsirion_tp
execute as @a[scores={SkyOsirion_debug=5}] run scoreboard objectives setdisplay sidebar SkyOsirion_quit_game


##DISPLAY DI DEBUG - PVN (DA ABBILITARE SOLO PER LE VERSIONI INSTABILI)
execute as @a[scores={SkyOsirion_debug=6}] run scoreboard objectives setdisplay sidebar 1.21.4_PVN_0a


##DISPLAY DI DEBUG - PID
execute as @a[scores={SkyOsirion_debug=7}] run scoreboard objectives setdisplay sidebar 1.21_PID_0
execute as @a[scores={SkyOsirion_debug=-71}] run scoreboard objectives setdisplay sidebar PID_0
execute as @a[scores={SkyOsirion_debug=-72}] run scoreboard objectives setdisplay sidebar PID_1
execute as @a[scores={SkyOsirion_debug=8}] run scoreboard objectives setdisplay list PID_warning
execute as @a[scores={SkyOsirion_debug=-8}] run scoreboard objectives setdisplay sidebar PID_lts_warning


##DISPLAY DI DEBUG - GENERATED STRUCTURES
execute as @a[scores={SkyOsirion_debug=9}] run scoreboard objectives setdisplay sidebar SkyOsirion_final


##DISPLAY DI DEBUG - TEST
execute as @a[scores={SkyOsirion_debug=10}] run scoreboard objectives setdisplay sidebar SkyOsirion_structures_id
execute as @a[scores={SkyOsirion_debug=11}] run scoreboard objectives setdisplay sidebar SkyOsirion_custom_structures


##DISPLAY DI DEBUG - ISLANDS GENERATED
execute as @a[scores={SkyOsirion_debug=12}] run scoreboard objectives setdisplay sidebar SkyOsirion_default
execute as @a[scores={SkyOsirion_debug=13}] run scoreboard objectives setdisplay sidebar SkyOsirion_large
execute as @a[scores={SkyOsirion_debug=14}] run scoreboard objectives setdisplay sidebar SkyOsirion_small
execute as @a[scores={SkyOsirion_debug=15}] run scoreboard objectives setdisplay sidebar SkyOsirion_very_small


##DISPLAY DI DEBUG - MULTIPLAYER
execute as @a[scores={SkyOsirion_debug=16}] run scoreboard objectives setdisplay list SkyOsirion_multiplayer
execute as @a[scores={SkyOsirion_debug=17}] run scoreboard objectives setdisplay sidebar SkyOsirion_multiplayer_reset
execute as @a[scores={SkyOsirion_debug=18}] run scoreboard objectives setdisplay sidebar SkyOsirion_multiplayer_tick
execute as @a[scores={SkyOsirion_debug=19}] run scoreboard objectives setdisplay list SkyOsirion_multiplayer_join