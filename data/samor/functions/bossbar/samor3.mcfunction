bossbar set samor2 visible false
bossbar set samor3 visible true

bossbar set samor3 players @a
execute store result bossbar samor3 value run scoreboard players add bossbarcountdown bossbar 1
function samor:lib/getplayercount
bossbar set samor3 name ["",{"text":"\u2583","bold":true,"color":"#DAA611"},{"text":"\u2585","bold":true,"color":"#D49515"},{"text":"\u2586","bold":true,"color":"#CE8419"},{"text":"\u2587","bold":true,"color":"#C8731D"},{"text":" Online Játékosok: ","bold":true,"color":"#CE8419"},{"score":{"name":"playercounter","objective":"playeronline"},"bold":true,"color":"#E1B70D"},{"text":" \u2587","bold":true,"color":"#C8731D"},{"text":"\u2586","bold":true,"color":"#CE8419"},{"text":"\u2585","bold":true,"color":"#D49515"},{"text":"\u2583","bold":true,"color":"#DAA611"}]
