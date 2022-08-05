#2h (0)
execute if score timeleft leallas matches 1 run function shutdown:shutdowntimers/tminus2h
#1,5h (1800)
execute if score timeleft leallas matches 1800 run function shutdown:shutdowntimers/tminus1_5h
#1h (3600)
execute if score timeleft leallas matches 3600 run function shutdown:shutdowntimers/tminus1h
#30m (5400)
execute if score timeleft leallas matches 5400 run function shutdown:shutdowntimers/tminus30m
#20m (6000)
execute if score timeleft leallas matches 6000 run function shutdown:shutdowntimers/tminus20m
#10m (6600)
execute if score timeleft leallas matches 6600 run function shutdown:shutdowntimers/tminus10m
#120s (7080)
execute if score timeleft leallas matches 7080 run function shutdown:shutdowntimers/tminus120s
#90s (7110)
execute if score timeleft leallas matches 7110 run function shutdown:shutdowntimers/tminus90s
#60s (7140)
execute if score timeleft leallas matches 7140 run function shutdown:shutdowntimers/tminus60s
#30s (7170)
execute if score timeleft leallas matches 7170 run function shutdown:shutdowntimers/tminus30s

#kakukkverő t-10 minutes





#óra-perc-másodperc kalkulációk
#timeleft_reverse
execute store result score timeleft_reverse leallas run scoreboard players get 7200 konst
scoreboard players operation timeleft_reverse leallas -= timeleft leallas
#timeleft_600reverse
execute store result score timeleft_600reverse leallas run scoreboard players get 600 konst
scoreboard players operation timeleft_600reverse leallas -= timeleft_reverse leallas
#óra
execute store result score tmph leallas run scoreboard players get timeleft_reverse leallas
execute store result score leallh leallas run scoreboard players operation tmph leallas /= 3600 konst
#perc
execute store result score tmpm leallas run scoreboard players get timeleft_reverse leallas
execute store result score tmpm leallas run scoreboard players operation tmpm leallas %= 3600 konst
execute store result score leallm leallas run scoreboard players operation tmpm leallas /= 60 konst
#másodperc
execute store result score tmps leallas run scoreboard players get timeleft_reverse leallas
execute store result score lealls leallas run scoreboard players operation tmps leallas %= 60 konst


execute if score leall leallas matches 1 run function shutdown:main/t10switch
execute if score leall leallas matches 1 run scoreboard players add timeleft leallas 1


execute if score leall leallas matches 1 run schedule function shutdown:main/shutdown 1s