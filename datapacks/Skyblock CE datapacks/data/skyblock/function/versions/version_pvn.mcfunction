#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##PVN VERSION PROTOCOL (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add 1.21.4_PVN_FOOLS2025 dummy
scoreboard players add @a 1.21.4_PVN_FOOLS2025 1
execute as @a[scores={SkyblockCE_pvn_fools=10}] run scoreboard objectives remove 1.21.4_PVN_FOOLS2025


##(AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB)
execute as @a[scores={1.21.4_PVN_FOOLS2025=1}] run tellraw @s ["",{"text":"Welcome to the Skyblock Classic Edition - April Fools Edition:","bold":true},{"text":"\n"},{"text":" 6.1.0 The Removal Update - fork_JE-1.21.4-6.1.0-Skyblock_Classic_Edition:BUILDING:22.02.2025a","italic":true},{"text":" \n"},{"text":"\n"},{"text":"for the Minecraft Java Edition:","bold":true},{"text":" 1.21.4 Tricky Trials/The Garden Awakens Update/Drops","italic":true},{"text":"\n\n⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜\n\nCheck the news of the latest version here:\n"},{"text":"Changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/tag/????"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Check the latest version on the various links here:","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition"}},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"\n\n"},{"text":"\u27a1Modrinth In the future","color":"green","clickEvent":{"action":"open_url","value":"..."}},{"text":"\n\n"},{"text":"\u27a1Modrinth","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/skyblock-classic-edition-portable"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/skyblock-classic-edition-portable"}},{"text":"\n\n"},{"text":"\u27a1Smithed","color":"blue","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition"}},{"text":"\n\n"},{"text":"➡Crowdin Translations Project","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Help me translate into your native language. The languages are must be faithful to the English language, respect the punctuation and the capitalization."}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"text":"Also follow me on Discord server if you want to make a suggestion or you found a bug.","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##PVN WARNING (NON TOCCARE, SOLO VERSIONI DI SVILUPPO)
execute as @a[scores={1.21.4_PVN_FOOLS2025=5}] run tellraw @s ["",{"text":"Warning: THIS VERSION IS PROVIDED AS-IS AND IF THERE IS A PROBLEM OR FEATURE REQUEST IT WILL BE REJECTED IN THIS VERSION.","color":"red"}]


##PVN VERSION PROTOCOL LOOP (NON TOCCARE MAI)
execute as @a[scores={1.21.4_PVN_FOOLS2025=900000000..}] run scoreboard players set @a 1.21.4_PVN_FOOLS2025 0