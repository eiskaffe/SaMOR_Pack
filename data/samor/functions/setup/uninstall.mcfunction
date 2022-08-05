tellraw @a {"text":"SaMOR Pack Uninstallation in progress..."}

gamerule maxCommandChainLength 65536
scoreboard objectives remove autox
scoreboard objectives remove autoy
scoreboard objectives remove autoz
scoreboard objectives remove autofacing
schedule clear samor:autocoordinates/autocoordinate
scoreboard objectives remove bossbar
scoreboard objectives remove showBossbar
scoreboard objectives remove playeronline
scoreboard objectives remove showCoordinates
scoreboard objectives remove tmp
scoreboard objectives remove konst
scoreboard objectives remove leallas
schedule clear samor:bossbar/main
bossbar remove samorleall
bossbar remove samor1
bossbar remove samor2
bossbar remove samor3tt


tellraw @a {"text":"SaMOR Pack Succesfully Uninstalled"}