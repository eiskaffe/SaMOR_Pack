#lekéri az adatokat
execute as @a run function samor:autocoordinates/getdata
execute as @a[gamemode=creative] run tellraw @a ["",{"selector":"@a[gamemode=creative] \u0020"},{"text":" CSAL!!!!!!!!! KREATÍVBAN VAN!"}]
#kiírja az adatokat annak függvényében, hogy merre néz a játékos
#north1 158 -180- 202 (158-180)
execute as @a[scores={autofacing=158..202}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" North","bold":true,"color":"#E89314"}]
#north-east2 203 -225- 247
execute as @a[scores={autofacing=203..247}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" North-East","bold":true,"color":"#E89314"}]
#east3 248 -270- 292
execute as @a[scores={autofacing=248..292}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" East","bold":true,"color":"#E89314"}]
#south-east4 293 -315- 337
execute as @a[scores={autofacing=293..337}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" South-East","bold":true,"color":"#E89314"}]
#south5 338 -0- 22
execute as @a[scores={autofacing=338..}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" South","bold":true,"color":"#E89314"}]
execute as @a[scores={autofacing=..22}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" South","bold":true,"color":"#E89314"}]
#south-west6 23 -45- 67
execute as @a[scores={autofacing=23..67}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" South-West","bold":true,"color":"#E89314"}]
#west7 68 -90- 112
execute as @a[scores={autofacing=68..112}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" West","bold":true,"color":"#E89314"}]
#north-west8 113 -135- 157
execute as @a[scores={autofacing=113..157}] run title @s actionbar ["",{"text":"x","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autox"},"bold":true},{"text":" y","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoy"},"bold":true},{"text":" z","bold":true,"color":"#E89314"},{"score":{"name":"@s","objective":"autoz"},"bold":true},{"text":" North-West","bold":true,"color":"#E89314"}]


#újraindítja a functiont. Érdemes 10 és 20 tick közé rakni a időintervallumot.
schedule function samor:autocoordinates/autocoordinate 20t