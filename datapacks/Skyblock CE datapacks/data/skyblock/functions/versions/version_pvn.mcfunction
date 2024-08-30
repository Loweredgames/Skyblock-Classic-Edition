#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##VERSION PVN (LASCIARE SEMPRE COSI)
function skyblock:versions/setup_version
function skyblock:versions/pvn_remove


##PVN VERSION PROTOCOL (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add PVN_aprilfool_2024 dummy
scoreboard players add @a PVN_aprilfool_2024 1
execute as @a[scores={SkyblockCE_id=10}] run scoreboard objectives remove PVN_aprilfool_2024


##PVN VERSION LEGACY PROTOCOL (DA AGGIUNGERE SOLO QUANDO IL NUMERO CAMBIA)
scoreboard objectives add PVN_legacy dummy
execute as @a[scores={PVN_aprilfool_2024=1..}] run scoreboard players add @a PVN_legacy 1
execute as @a[scores={PVN_legacy=100}] run tellraw @a ["",{"text":"\u2716","color":"red"},{"text":"The Minecraft Versions: "},{"text":"1.20.X (5.0.0)","bold":true},{"text":" are old versions and may not be compatible with the current datapack: if the datapack is updated it may have compatibility problems, always update the datapack to the latest compatible version."}]


##(AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB)
execute as @a[scores={PVN_aprilfool_2024=1}] run tellraw @s ["",{"text":"Welcome to the Skyblock Potato Edition:","bold":true},{"text":"\n"},{"text":" 1.0.1 Poisonous Potato Islands Update - JE-24w14potato-Skyblock_Classic_Edition:1.0.1:potato","italic":true},{"text":" \n"},{"text":"\n"},{"text":"for the Minecraft Java Edition:","bold":true},{"text":" 24w14potato - Poisonous Potato Update","italic":true},{"text":"\n\n⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜\n\nCheck the news of the latest version here:\n"},{"text":"Changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/tag/JE-April_Fool_2024a"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Check the latest version on the various links here:","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"text":"➡Crowdin Translations Project","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Help me translate into your native language. The languages are must be faithful to the English language, respect the punctuation and the capitalization."}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Translated by Me :)","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Also follow me on Discord server if you want to make a suggestion or you found a bug.","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##PVN WARNING (NON TOCCARE, SOLO VERSIONI DI SVILUPPO)
execute as @a[scores={PVN_aprilfool_2024=5}] run tellraw @s ["",{"text":"⚠ATTENTION: You are using a April Fools version, the world may become corrupted and damaged in this version.","color":"red"},{"text":".\u26a0","color":"red"}]


##PVN VERSION PROTOCOL LOOP
execute as @a[scores={PVN_aprilfool_2024=900000000..}] run scoreboard players set @a PVN_aprilfool_2024 1000