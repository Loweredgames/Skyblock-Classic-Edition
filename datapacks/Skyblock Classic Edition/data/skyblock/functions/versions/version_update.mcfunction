##Version ID (DISABLITARE SE NON CI SONO CONVERSIONI)
function skyblock:versions/versions_id


##ID Version Protocol (AGGIORNARE SEMPRE NELLE NUOVE VERSIONI. UTILIZZARE UN NUMERO INTERO PER LE VERSIONI STABILI. UTTILIZARE UNA LETTERA PER LE VERSIONI DI SVILUPPO)
scoreboard objectives add PVN_10 dummy
scoreboard players add @a PVN_10 1
execute as @a[scores={skyblock_ID=10}] run scoreboard objectives remove PVN_10


##ID Version Legacy Protocol (DA AGGIUNGERE SOLO QUANDO IL NUMERO CAMBIA)
scoreboard objectives add PVN_legacy dummy
scoreboard players set @a PVN_9 1
execute as @a[scores={PVN_9=1..}] run scoreboard players add @a PVN_legacy 1
execute as @a[scores={PVN_legacy=100}] run tellraw @a ["",{"text":"\u2716","color":"red"},{"translate":"skyblock_classic_edition.version_update.compatible.minecraft_versions"},{"text":"1.16.X - 1.18 - 1.18.1","bold":true},{"translate":"skyblock_classic_edition.version_update.compatible.info"}]
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove PVN_9
execute as @a[scores={PVN_legacy=201..}] run scoreboard objectives remove PVN_legacy


##ID Version Legacy Protocol BUILDING (DA AGGIUNGERE SOLO QUANDO IL NUMERO CAMBIA)
scoreboard objectives remove PVN_10i



##AGGIUNGERE CHANGELOG IN GITHUB E POI AGGIORNARE GITHUB
execute as @a[scores={PVN_10=1}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.welcome","bold":true},{"text":"\n"},{"text":" 4.0.0 The Languages And Translations Update - JE-1.19.4-Skyblock_Classic_Edition:4.0.0","italic":true},{"text":" \n"},{"text":"\n"},{"translate":"skyblock_classic_edition.version_update.for_edition","bold":true},{"text":" 1.19.4 The Wild Update","italic":true},{"translate":"skyblock_classic_edition.version_update.check_news"},{"translate":"skyblock_classic_edition.version_update.changelog","italic":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition/releases/tag/JE-66a"}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.check_links","bold":true},{"text":"\n\n"},{"text":"\u27a1Github","color":"gray","clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition"}},{"text":"\n\n"},{"text":"\u27a1Curse","color":"#D51314","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"Forge","color":"#666666","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/worlds/skyblock-classic-edition/files"}},{"text":"\n\n"},{"text":"\u27a1Planet","color":"#16BF00","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"Minecraft","color":"#00C3B6","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/skyblock-classic-edition/"}},{"text":"\n\n"},{"translate":"skyblock_classic_edition.version_update.crowdin","color":"yellow","clickEvent":{"action":"open_url","value":"https://crowdin.com/project/skyblock-classic-edition"}},{"text":" ","color":"white"},{"text":"[!]","color":"white","hoverEvent":{"action":"show_text","contents":[{"translate":"skyblock_classic_edition.version_update.crowdin.info"}]}},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"credits","italic":true,"color":"#FFE28B"},{"text":"\n\n"},{"translate":"version","italic":true,"color":"#FFE28B"},{"text":"\n\n\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\u2b1c\n\n"},{"translate":"skyblock_classic_edition.version_update.discord","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/T6PHxhznJ6"}},{"text":"\n "}]


##ID Version Protocol Loop
execute as @a[scores={PVN_10=900000000..}] run scoreboard players set @a PVN_10 0


##Warning (NON TOCCARE, SOLO VERSIONI DI SVILUPPO)
#execute as @a[scores={PVN_10=5..}] run scoreboard objectives setdisplay sidebar PVN_10
#execute as @a[scores={PVN_10=6}] run tellraw @s ["",{"translate":"skyblock_classic_edition.version_update.development_version.warning","color":"red"},{"translate":"skyblock_classic_edition.version_update.development_version.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Lorenzo0310200/Skyblock-Classic-Edition/issues"}},{"text":".\u26a0","color":"red"}]