function samor:lib/veszely
execute as @a[limit=1] run tellraw @a ["",{"text":"\n\n"},{"text":"SaMOR Server Emergency Shutdown Systems:","bold":true,"underlined":true,"color":"#D61929","hoverEvent":{"action":"show_text","contents":{"text":"[SaMOR Szerver Vészhelyzeti Leállási Rendszer]","color":"#D50B0B"}}},{"text":"\n\n"},{"text":" Szerver leállás T Minusz ","color":"#FF0003"},{"text":"60","bold":true,"color":"#860F10","hoverEvent":{"action":"show_text","contents":{"text":"[Hatvan]","color":"#D50B0B"}}},{"text":" Másodperc.","color":"#FF0003"},{"text":"\n\n\n "}]
execute as @a at @s run playsound minecraft:custom.t60s master @s

execute store result bossbar samorleall value run scoreboard players set timeleft leallas 7141
execute if score leall leallas matches 0 run function shutdown:main/seton