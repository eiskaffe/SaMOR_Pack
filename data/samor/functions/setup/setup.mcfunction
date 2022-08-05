tellraw @a {"text":"SaMOR Pack Installation in progress..."}

#"ideiglenes" scoreboard
scoreboard objectives add tmp dummy

#AutoCoordinates scoreboard setup
gamerule maxCommandChainLength 31557600
scoreboard objectives add autox dummy {"text":"AutoX","bold":true,"color":"blue"}
scoreboard objectives add autoy dummy {"text":"AutoY","bold":true,"color":"green"}
scoreboard objectives add autoz dummy {"text":"AutoZ","bold":true,"color":"red"}
scoreboard objectives add autofacing dummy {"text":"AutoFacing","bold":true,"color":"yellow"}
function samor:autocoordinates/autocoordinate

#Konstansok
scoreboard objectives add konst dummy
scoreboard players set abs konst -1
scoreboard players set 60 konst 60
scoreboard players set 120 konst 120
scoreboard players set 600 konst 600
scoreboard players set 3600 konst 3600
scoreboard players set 7200 konst 7200

#bossbar ad setup
scoreboard objectives add bossbar dummy
scoreboard players set bossbarmain bossbar 0
scoreboard players set bossbarcountdown bossbar 0

# MAKE SURE TO EDIT THIS TO THE SERVER'S NAME
bossbar add samor1 ["",{"text":"\u2583","bold":true,"color":"#07DF06"},{"text":"\u2585","bold":true,"color":"#0DBC0C"},{"text":"\u2586","bold":true,"color":"#139913"},{"text":"\u2587","bold":true,"color":"#19761A"},{"text":" <SERVER NAME>","bold":true,"color":"#139913"},{"text":"\u2587","bold":true,"color":"#19761A"},{"text":"\u2586","bold":true,"color":"#139913"},{"text":"\u2585","bold":true,"color":"#0DBC0C"},{"text":"\u2583","bold":true,"color":"#07DF06"}]
bossbar set samor1 style notched_12
bossbar set samor1 color green
bossbar set samor1 max 12
bossbar set samor1 visible false

# MAKE SURE TO EDIT THIS TO YOUR ADDRESS
bossbar add samor2 ["",{"text":"\u2583","bold":true,"color":"#0770DF"},{"text":"\u2585","bold":true,"color":"#0D61C0"},{"text":"\u2586","bold":true,"color":"#1352A2"},{"text":"\u2587","bold":true,"color":"#194384"},{"text":" <ADDRESS> ","bold":true,"color":"#1352A2"},{"text":"\u2587","bold":true,"color":"#194384"},{"text":"\u2586","bold":true,"color":"#1352A2"},{"text":"\u2585","bold":true,"color":"#0D61C0"},{"text":"\u2583","bold":true,"color":"#0770DF"}]
bossbar set samor2 style notched_12
bossbar set samor2 color blue
bossbar set samor2 max 12
bossbar set samor2 visible false

# MAKE SURE TO EDIT THIS TO YOUR OWN LANGUAGE
scoreboard objectives add playeronline dummy
scoreboard players set playercounter playeronline 0
bossbar add samor3 ["",{"text":"\u2583","bold":true,"color":"#DAA611"},{"text":"\u2585","bold":true,"color":"#D49515"},{"text":"\u2586","bold":true,"color":"#CE8419"},{"text":"\u2587","bold":true,"color":"#C8731D"},{"text":" Online Játékosok: ","bold":true,"color":"#CE8419"},{"score":{"name":"playercounter","objective":"playeronline"},"bold":true,"color":"#E1B70D"},{"text":" \u2587","bold":true,"color":"#C8731D"},{"text":"\u2586","bold":true,"color":"#CE8419"},{"text":"\u2585","bold":true,"color":"#D49515"},{"text":"\u2583","bold":true,"color":"#DAA611"}]
bossbar set samor3 style notched_12
bossbar set samor3 color yellow
bossbar set samor3 max 12
bossbar set samor3 visible false

function samor:bossbar/main

#Szerver leállás bossbar plusz egyéb részeinek setupja

team add op {"text":"OP","bold":true,"color":"#E21118"}
scoreboard objectives add leallas dummy
scoreboard players set timeleft leallas 0
scoreboard players set t-10 leallas 0
scoreboard players set leallh leallas 0
scoreboard players set leallm leallas 0
scoreboard players set lealls leallas 0
scoreboard players set leall leallas 0
scoreboard players set tmps leallas 0
scoreboard players set tmpm leallas 0
scoreboard players set tmph leallas 0


#samorleall1 T-120 perctől T-10percig
bossbar add samorleall ["",{"text":"Szerver leállás T-Minus:","bold":true,"color":"#9C0009"},{"text":" ","color":"#9C0009"},{"score":{"name":"leallh","objective":"leallas"},"color":"#EE0008"},{"text":"h ","color":"#9C0009"},{"score":{"name":"leallm","objective":"leallas"},"color":"#EE0008"},{"text":"m ","color":"#9C0009"},{"score":{"name":"lealls","objective":"leallas"},"color":"#EE0008"},{"text":"s","color":"#9C0009"}]
bossbar set samorleall style progress
bossbar set samorleall max 7200
bossbar set samorleall value 0
bossbar set samorleall color red
bossbar set samorleall visible false

#toggle beállítások a mycommand pluginnal
scoreboard objectives add showBossbar trigger
scoreboard objectives add showCoordinates trigger



#todo: Szerver leállás hangeffekt nem fut le és mycmd custom parancs az UI-ra



#Tag2: Electric Boogaloo

#Mérföldkő lista: ki szerezte meg X advancementet legelőször









tellraw @a {"text":"SaMOR Pack Succesfully Installed"}