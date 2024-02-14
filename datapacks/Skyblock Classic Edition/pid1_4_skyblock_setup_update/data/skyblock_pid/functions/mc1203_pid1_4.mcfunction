#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Update SUBPID 1_4


##Scoreboard Start SUBPID 1_4
execute as @a[scores={1.20.5_PID_1_4=5..200}] run gamemode spectator @a
execute as @a[scores={1.20.5_PID_1_4=5}] run gamerule doImmediateRespawn true
execute as @a[scores={1.20.5_PID_1_4=5..200}] run effect give @a blindness 5 0 true
execute as @a[scores={1.20.5_PID_1_4=5..200}] run effect give @a night_vision 5 0 true
execute as @a[scores={1.20.5_PID_1_4=200}] run gamerule doImmediateRespawn false
execute as @a[scores={1.20.5_PID_1_4=205}] run playsound minecraft:entity.player.levelup ambient @a 0 66 0 100 2
execute as @a[scores={1.20.5_PID_1_4=5..200}] run summon minecraft:area_effect_cloud ~ ~1 ~


##SKYBLOCK SUBPID VERSION WARNING (CAMBIARE SOLO SE NON CI SONO CONVERSIONI)
execute as @a[scores={1.20.3_PID_1_4=5}] run tellraw @s [{"translate":"skyblock_classic_edition.versions_id.warning_update.on","color":"#d5d5d5","italic":true},{"text":"1.20.3_PID_1_4"}]


###SUBPID 1_4 - 1.20.5 (SPOSTARE "SUBPID_X" IN LEGACY QUANDO FINISCE IL SUPPORTO DELLA VERSIONE, NON ELIMINARE IL COMMENTO IN SE)


##Overworld
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=100}] run tp @a -252 66 -477 0 0
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=110}] run fill -254 64 -479 -250 64 -479 minecraft:acacia_fence keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=120}] run fill -250 64 -478 -250 64 -475 minecraft:acacia_fence keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=130}] run fill -251 64 -475 -254 64 -475 minecraft:acacia_fence keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=140}] run fill -254 64 -476 -254 64 -478 minecraft:acacia_fence keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=150}] run fill -254 63 -479 -250 63 -475 minecraft:acacia_planks keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=160}] run setblock -252 64 -477 minecraft:torch keep
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=170}] run summon minecraft:armadillo -251.82 64.00 -476.08 {Brain: {memories: {"minecraft:gaze_cooldown_ticks": {value: 109}}}, HurtByTimestamp: 0, Attributes: [{Base: 16.0d, Modifiers: [{Amount: 0.07106808160835759d, Operation: 1, UUID: [I; -959789132, -110017859, -1234871359, 1970301735], Name: "Random spawn bonus"}], Name: "minecraft:generic.follow_range"}, {Base: 0.14d, Name: "minecraft:generic.movement_speed"}], Invulnerable: 0b, FallFlying: 0b, ForcedAge: 0, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, InLove: 0, DeathTime: 0s, HandDropChances: [0.085f, 0.085f], PersistenceRequired: 1b, state: "idle", Age: 0, Motion: [0.0d, -0.0784000015258789d, 0.0d], Health: 12.0f, LeftHanded: 0b, Air: 300s, OnGround: 1b, Rotation: [217.97208f, -38.14224f], HandItems: [{}, {}], ArmorDropChances: [0.085f, 0.085f, 0.085f, 0.085f], CustomName: '"Armadillo BETA"', Fire: -1s, ArmorItems: [{}, {}, {}, {}], CanPickUpLoot: 0b, HurtTime: 0s}
execute in minecraft:overworld as @a[scores={1.20.5_PID_1_4=180}] run setblock -252 64 -478 minecraft:acacia_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['"Coming Soon"','"1.21.X"','"---------------"','""']},is_waxed:0b} keep


##Final Function SUBPID 1_4
execute as @a[scores={1.20.5_PID_1_4=205}] run advancement revoke @a only minecraft:end/root
execute as @a[scores={1.20.5_PID_1_4=205}] run advancement revoke @a only minecraft:nether/root
execute as @a[scores={1.20.5_PID_1_4=205}] run time set 0
execute in minecraft:overworld at @a[scores={1.20.5_PID_1_4=210}] run tp @a 0 66 0 90 0
execute as @a[scores={1.20.5_PID_1_4=215}] run gamemode survival @a


##Skyblock SUBPID 1_4 Reset LOOP
execute as @a[scores={1.20.5_PID_1_4=2000000..}] run scoreboard players set @a 1.20.5_PID_1_4 100000