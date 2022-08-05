bossbar set samor1 visible true
bossbar set samor3 visible false
execute if score timeleft leallas matches ..6599 run bossbar set samorleall visible false

bossbar set samor1 players @a
execute store result bossbar samor1 value run scoreboard players add bossbarcountdown bossbar 1
