##Legacy Setup (Aggiornato alla versione: 4.0.0) Ricordasi di aggiornare "legacy_version", aggiungendo le cose della convesione (il libro,il portale bloccato, ecc.) per le versioni vecchie e incompatibili.
execute as @a[scores={legacy=1}] run scoreboard objectives add skyblock_normal minecraft.custom:minecraft.play_time
execute as @a[scores={legacy=1..52}] run scoreboard players set @a skyblock_normal 2400
execute as @a[scores={legacy=5}] run scoreboard objectives remove skyblock
execute as @a[scores={legacy=6}] run setblock 0 -2 0 minecraft:crying_obsidian destroy
execute as @a[scores={legacy=6}] run effect give @a minecraft:resistance 11 250 true
execute as @a[scores={legacy=25}] run tellraw @a {"translate":"skyblock_classic_edition.legacy_version.loading"}
execute as @a[scores={legacy=25}] run scoreboard players set @a skyblock_install -1
execute as @a[scores={legacy=25}] run scoreboard players set @a skyblock_island -1
execute as @a[scores={legacy=26}] run gamerule doDaylightCycle true
execute as @a[scores={legacy=26}] run gamerule doWeatherCycle true
execute as @a[scores={legacy=27}] run scoreboard objectives add kills deathCount
execute as @a[scores={legacy=27}] run scoreboard objectives setdisplay list kills
execute as @a[scores={legacy=50}] run scoreboard players set @a tp 0
execute as @a[scores={legacy=51}] run fill 0 -1 0 0 7 0 minecraft:air destroy
execute as @a[scores={legacy=52}] run tp @a 0 1 0
execute as @a[scores={legacy=52}] run give @p filled_map{map:0} 1
execute as @a[scores={legacy=52}] run gamemode survival @a
execute as @a[scores={legacy=52}] run scoreboard objectives add skyblock_ID dummy
execute as @a[scores={legacy=52}] run effect give @a minecraft:slow_falling 201 3 false
execute as @a[scores={legacy=1200}] run tp @a 0 1 0
execute as @a[scores={legacy=1201..}] run scoreboard objectives remove legacy
#scoreboard objectives setdisplay sidebar legacy