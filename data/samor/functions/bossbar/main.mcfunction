#samor1
execute if score bossbarmain bossbar matches ..1 run function samor:bossbar/samor1
#samor2
execute if score bossbarmain bossbar matches 2 run function samor:bossbar/samor2
#samor3
execute if score bossbarmain bossbar matches 3 run function samor:bossbar/samor3
#samorleall
execute if score leall leallas matches 1 if score bossbarmain bossbar matches 4 if score timeleft leallas matches ..6599 run function samor:bossbar/samorleall
#samorleallt10
execute if score leall leallas matches 1 if score timeleft leallas matches 6600.. run function samor:bossbar/samorleallt10


execute if score bossbarcountdown bossbar matches 12.. run scoreboard players add bossbarmain bossbar 1
execute if score bossbarcountdown bossbar matches 12.. run scoreboard players set bossbarcountdown bossbar 0

execute if score leall leallas matches 0 if score bossbarmain bossbar matches 4.. run scoreboard players set bossbarmain bossbar 1
execute if score leall leallas matches 1 if score bossbarmain bossbar matches 5.. run scoreboard players set bossbarmain bossbar 1
execute if score leall leallas matches 1 if score timeleft leallas matches 6600.. if score bossbarmain bossbar matches 4.. run scoreboard players set bossbarmain bossbar 1

schedule function samor:bossbar/main 1s
