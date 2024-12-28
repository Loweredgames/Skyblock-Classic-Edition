#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##DEBUG SETUP (SOLO SVILUPPATORI)
scoreboard objectives add SkyblockCE_debug dummy
execute as @a[scores={SkyblockCE_debug=0}] run scoreboard objectives setdisplay sidebar SkyblockCE_debug


##TRANSLATE TEST DEBUG
execute as @a[scores={SkyblockCE_debug=-0}] run tellraw @a [{"translate":"skyblock_classic_edition.folder.test"}]


##DISPLAY DI DEBUG - SETUP SKYBLOCK
execute as @a[scores={SkyblockCE_debug=1}] run scoreboard objectives setdisplay sidebar SkyblockCE_install
execute as @a[scores={SkyblockCE_debug=2}] run scoreboard objectives setdisplay sidebar SkyblockCE_islands
execute as @a[scores={SkyblockCE_debug=3}] run scoreboard objectives setdisplay sidebar SkyblockCE_id
execute as @a[scores={SkyblockCE_debug=4}] run scoreboard objectives setdisplay sidebar SkyblockCE_tp
execute as @a[scores={SkyblockCE_debug=5}] run scoreboard objectives setdisplay sidebar SkyblockCE_quit_game


##DISPLAY DI DEBUG - PVN (DA ABBILITARE SOLO PER LE VERSIONI INSTABILI)
execute as @a[scores={SkyblockCE_debug=6}] run scoreboard objectives setdisplay sidebar 1.20.6_PVN_0


##DISPLAY DI DEBUG - PID
execute as @a[scores={SkyblockCE_debug=7}] run scoreboard objectives setdisplay sidebar 1.20.6_PID_0
execute as @a[scores={SkyblockCE_debug=-71}] run scoreboard objectives setdisplay sidebar PID_0
execute as @a[scores={SkyblockCE_debug=-72}] run scoreboard objectives setdisplay sidebar PID_1
execute as @a[scores={SkyblockCE_debug=8}] run scoreboard objectives setdisplay list PID_warning
execute as @a[scores={SkyblockCE_debug=-8}] run scoreboard objectives setdisplay sidebar PID_lts_warning


##DISPLAY DI DEBUG - GENERATED STRUCTURES
execute as @a[scores={SkyblockCE_debug=9}] run scoreboard objectives setdisplay sidebar SkyblockCE_final


##DISPLAY DI DEBUG - TEST
execute as @a[scores={SkyblockCE_debug=10}] run scoreboard objectives setdisplay sidebar SkyblockCE_structures_id
execute as @a[scores={SkyblockCE_debug=11}] run scoreboard objectives setdisplay sidebar SkyblockCE_custom_structures


##DISPLAY DI DEBUG - ISLANDS GENERATED
execute as @a[scores={SkyblockCE_debug=12}] run scoreboard objectives setdisplay sidebar SkyblockCE_default
execute as @a[scores={SkyblockCE_debug=13}] run scoreboard objectives setdisplay sidebar SkyblockCE_large
execute as @a[scores={SkyblockCE_debug=14}] run scoreboard objectives setdisplay sidebar SkyblockCE_small


##DISPLAY DI DEBUG - MULTIPLAYER
execute as @a[scores={SkyblockCE_debug=15}] run scoreboard objectives setdisplay list SkyblockCE_multiplayer
execute as @a[scores={SkyblockCE_debug=16}] run scoreboard objectives setdisplay sidebar SkyblockCE_multiplayer_reset
execute as @a[scores={SkyblockCE_debug=17}] run scoreboard objectives setdisplay sidebar SkyblockCE_multiplayer_tick
execute as @a[scores={SkyblockCE_debug=18}] run scoreboard objectives setdisplay list SkyblockCE_multiplayer_join


##DISPLAY DI DEBUG - TEST
execute as @a[scores={SkyblockCE_debug=1000}] run scoreboard objectives setdisplay sidebar refactoring_scoreboard
execute as @a[scores={SkyblockCE_debug=2000}] run scoreboard objectives setdisplay sidebar SkyblockCE_legacy_version
execute as @a[scores={SkyblockCE_debug=2000}] run scoreboard objectives setdisplay sidebar SkyblockCE_test_structures