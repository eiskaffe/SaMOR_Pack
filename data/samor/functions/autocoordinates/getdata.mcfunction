#lekéri a játékos kordinátáit
execute store result score @s autox run data get entity @s Pos[0]
execute store result score @s autoy run data get entity @s Pos[1]
execute store result score @s autoz run data get entity @s Pos[2]

#lekérdi a játékos rotációját
execute store result score @s autofacing run data get entity @s Rotation[0]

#abszolút függvény
execute if score @s autofacing matches ..-1 run scoreboard players operation @s autofacing *= abs konst