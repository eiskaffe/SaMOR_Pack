bossbar set samor3 visible false
bossbar set samorleall visible true

bossbar set samorleall players @a
scoreboard players add bossbarcountdown bossbar 1
bossbar set samorleall max 7200

execute if score leallh leallas matches 1.. run bossbar set samorleall name ["",{"text":"Szerver leállás T-Minus:","bold":true,"color":"#9C0009"},{"text":" ","color":"#9C0009"},{"score":{"name":"leallh","objective":"leallas"},"color":"#EE0008"},{"text":"h ","color":"#9C0009"},{"score":{"name":"leallm","objective":"leallas"},"color":"#EE0008"},{"text":"m ","color":"#9C0009"},{"score":{"name":"lealls","objective":"leallas"},"color":"#EE0008"},{"text":"s","color":"#9C0009"}]
execute if score leallh leallas matches 0 if score leallm leallas matches 10.. run bossbar set samorleall name ["",{"text":"Szerver leállás T-Minus:","bold":true,"color":"#9C0009"},{"text":" ","color":"#9C0009"},{"score":{"name":"leallm","objective":"leallas"},"color":"#EE0008"},{"text":"m ","color":"#9C0009"},{"score":{"name":"lealls","objective":"leallas"},"color":"#EE0008"},{"text":"s","color":"#9C0009"}]



