execute as @a if score @s deaths matches 1 run attribute @s minecraft:max_health base set 20

execute as @e[type=player] if score @s deaths matches 1 run function husks:playerdeath
execute as @e[type=player,team=!husk] run team join living
tag @a[tag=!husk] add living

execute as @e[type=player] run scoreboard players add @s timeAliveTrue 1
execute as @e[type=player] run function husks:fleeting

execute as @a if score @s currentHealth matches 1 run advancement grant @s only living/half_heart

execute in overworld as @a[distance=0..,team=husk] if score @s lifePercent matches ..49 run gamemode adventure @s
execute in the_nether as @a[distance=0..,team=husk] run gamemode survival @s

execute in overworld as @a[distance=0..] at @s positioned over motion_blocking if block ~ ~ ~ air run say outside

execute as @a if score @s printscore matches 1.. run function husks:printscore
execute as @a[tag=living] run function husks:updatelongestlife

scoreboard players add scoreboardtimer vars 1
execute if score scoreboardtimer vars matches 200 run scoreboard objectives setdisplay sidebar souls