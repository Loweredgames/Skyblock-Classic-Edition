#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##VERSION PVN (LASCIARE SEMPRE COSI)
function skyblock:versions/setup_version
function skyblock:versions/pvn_remove


##PVN VERSION PROTOCOL (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add 1.21.4_PVN_0a dummy
scoreboard players add @a 1.21.4_PVN_0a 1
execute as @a[scores={SkyblockCE_id=10}] run scoreboard objectives remove 1.21.4_PVN_0a
execute as @a[scores={SkyblockCE_import=20}] run scoreboard objectives remove 1.21.4_PVN_0a


##PVN VERSION LEGACY PROTOCOL (DA AGGIUNGERE SOLO QUANDO IL NUMERO CAMBIA)
scoreboard objectives add PVN_legacy dummy
scoreboard players set @a 1.20.6_PVN_0 1
execute as @a[scores={1.20.6_PVN_0=1..}] run scoreboard players add @a PVN_legacy 1
execute as @a[scores={PVN_legacy=100}] run tellraw @a ["",{"text":"\u2716","color":"red"},{"translate":"skyblock_classic_edition.version_update.compatible.minecraft_versions"},{"text":"1.16.X - 1.17.1/1.18.1 - 1.18.2 - 1.19.4 - 1.20.2/1.20.3 - 1.20.4","bold":true},{"translate":"skyblock_classic_edition.version_update.compatible.info"}]
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove 1.20.6_PVN_0
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove PVN_legacy


##(AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB)
execute as @a[scores={1.21.4_PVN_0a=1}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.welcome","bold":true},{"text":"\n"},{"text":" 6.1.0 The Removal Update - JE-1.21>1.21.4-6.1.0-Skyblock_Classic_Edition:BUILDING:22.02.2025a","italic":true},{"text":" \n"},{"text":"\n"},{"translate":"skyblock_classic_edition.version_update.for_edition","bold":true},{"text":" 1.21/1.21.1/1.21.2/1.21.3/1.21.4 Tricky Trials/Bundles of Bravery/The Garden Awakens Update/Drops","italic":true},{"translate":"skyblock_classic_edition.version_update.check_news"},{"translate":"skyblock_classic_edition.version_update.changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/tag/1.21.4_JE-0a"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.check_links","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition"}},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://curseforge.com/minecraft/data-packs/skyblock-classic-edition-portable-version/files"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/skyblock-classic-edition-portable-version/"}},{"text":"\n\n"},{"text":"\u27a1Modrinth In the future","color":"green","clickEvent":{"action":"open_url","value":"..."}},{"text":"\n\n"},{"text":"\u27a1Modrinth","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/skyblock-classic-edition-portable"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/skyblock-classic-edition-portable"}},{"text":"\n\n"},{"text":"\u27a1Smithed","color":"blue","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition"}},{"text":" (Portable Version)","color":"white","clickEvent":{"action":"open_url","value":"https://smithed.net/packs/skyblock-classic-edition"}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.version_update.crowdin","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.version_update.crowdin.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.credits","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##PVN WARNING (NON TOCCARE, SOLO VERSIONI DI SVILUPPO)
execute as @a[scores={1.21.4_PVN_0a=5}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.development_version.warning","color":"red"},{"translate":"skyblock_classic_edition.version_update.development_version.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/issues"}},{"text":".\u26a0","color":"red"}]


##PVN VERSION PROTOCOL LOOP (NON TOCCARE MAI)
execute as @a[scores={1.21.4_PVN_0a=900000000..}] run scoreboard players set @a 1.21.4_PVN_0a 0