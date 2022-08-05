bossbar set samor1 visible false
bossbar set samor2 visible true

bossbar set samor2 players @a
execute store result bossbar samor2 value run scoreboard players add bossbarcountdown bossbar 1
