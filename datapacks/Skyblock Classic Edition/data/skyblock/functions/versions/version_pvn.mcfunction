#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Version PVN (DISABILITARE SE NON CI SONO CONVERSIONI)
function skyblock:versions/setup_version


##PVN Version Protocol (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add PVN_OLD dummy
scoreboard players add @a PVN_OLD 1
execute as @a[scores={SkyblockCE_id=100}] run scoreboard objectives remove PVN_OLD


##AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB
execute as @a[scores={PVN_OLD=1}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.welcome","bold":true},{"text":"\n"},{"text":" 5.0.2 Historical Tales Update - JE-1.19.4-Skyblock_Classic_Edition:5.0.2","italic":true},{"text":" \n"},{"text":"\n"},{"translate":"skyblock_classic_edition.version_update.for_edition","bold":true},{"text":" 1.19.4 The Wild Update","italic":true},{"translate":"skyblock_classic_edition.version_update.check_news"},{"translate":"skyblock_classic_edition.version_update.changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Loweredgames/Skyblock-Classic-Edition/releases/tag/1.19.4_JE-1a"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.check_links","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.version_update.crowdin","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.version_update.crowdin.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"credits","italic":true,"color":"#FFE28B"},{"text":"\n\n"},{"translate":"version","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##PVN Version Protocol Loop
execute as @a[scores={PVN_OLD=900000000..}] run scoreboard players set @a PVN_OLD 0