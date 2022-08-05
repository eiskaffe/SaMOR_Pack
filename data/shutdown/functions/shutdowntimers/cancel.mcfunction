execute if score leall leallas matches 1 run tellraw @a ["",{"text":"\n\n"},{"text":"SaMOR Server Emergency Shutdown Systems","bold":true,"underlined":true,"color":"#900F0F"},{"text":"\n\n \u0020 \u0020"},{"text":"Szerver leállás leállítva","color":"gold"},{"text":"\n\n "}]
execute if score leall leallas matches 1 run execute as @a at @s run playsound minecraft:custom.tcancel master @a ~ ~ ~

execute if score leall leallas matches 0 run tellraw @a[team=op] ["",{"text":"\n"},{"selector":"@s"},{"text":" nincs detonáció ütemezve!\n "}]
execute if score leall leallas matches 1 store result bossbar samorleall value run scoreboard players set timeleft leallas 0
execute if score leall leallas matches 1 run tellraw @a[team=op] ["",{"text":"\n"},{"selector":"@s"},{"text":" leállította a detonációt!\n "}]
execute if score leall leallas matches 1 run scoreboard players set leall leallas 0
bossbar set samorleall visible false
schedule clear shutdown:main/shutdown