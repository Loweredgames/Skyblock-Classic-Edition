##Fix_End Setup (provissorio, da eliminare in futuro)
scoreboard players add @a fix_end 1


execute as @a[scores={fix_end=2}] run gamemode spectator @a
execute in minecraft:the_end as @a[scores={fix_end=3}] run tp @a 0 80 0 0 0
execute in minecraft:the_end as @a[scores={fix_end=4}] run kill @e[type=minecraft:ender_dragon]
execute in minecraft:the_end as @a[scores={fix_end=4}] run kill @e[type=minecraft:endermite]
execute in minecraft:the_end as @a[scores={fix_end=5}] run fill 3 64 3 -3 65 -3 minecraft:bedrock destroy
execute in minecraft:the_end as @a[scores={fix_end=6}] run summon endermite 0 70 0 {Silent:1b,Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,PlayerSpawned:0b,CustomName:'{"text":"Fix End"}'}
execute in minecraft:the_end as @a[scores={fix_end=6}] run fill 2 65 -2 -2 65 2 minecraft:end_portal destroy
execute in minecraft:the_end as @a[scores={fix_end=6}] run setblock 6 65 0 minecraft:command_block[conditional=false,facing=up]{Command:"tp @p 1000 64 1000",CustomName:'{"text":"@"}',LastExecution:3603655L,LastOutput:'{"extra":[{"color":"red","extra":[{"translate":"argument.entity.notfound.entity"}],"text":""}],"text":"[14:57:31] "}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b} destroy
execute in minecraft:the_end as @a[scores={fix_end=6}] run setblock 6 66 0 minecraft:stone_button[face=floor,facing=west,powered=false] destroy
execute in minecraft:the_end as @a[scores={fix_end=11}] run summon minecraft:ender_dragon 0 80 0
execute in minecraft:the_end as @a[scores={fix_end=15}] run gamemode survival @a