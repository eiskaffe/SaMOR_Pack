function samor:lib/figyelem
execute as @a[limit=1] run tellraw @a ["",{"text":"\n\n"},{"text":"SaMOR Server Emergency Shutdown Systems","bold":true,"underlined":true,"color":"#900F0F"},{"text":"\n\n \u0020 \u0020"},{"text":"Szerver leállás T Minusz ","color":"gold"},{"text":"20 perc","bold":true,"color":"gold"},{"text":"\n\n "}]
execute as @a at @s run playsound minecraft:custom.t20m master @s

execute store result bossbar samorleall value run scoreboard players set timeleft leallas 6001
execute if score leall leallas matches 0 run function shutdown:main/seton