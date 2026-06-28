execute as @a if score @s deaths matches 1 run attribute @s minecraft:max_health base set 20

execute as @e[type=player] if score @s deaths matches 1 run function husks:playerdeath

execute as @e[type=player] run scoreboard players add @s timeAliveTrue 1
execute as @e[tag=!husk,type=player] run function husks:fleeting

tag @a[tag=!husk] add living

execute as @a[tag=!husk] if score @s currentHealth matches 1 run advancement grant @s only living/half_heart

execute in overworld as @a[distance=0..,team=husk] run gamemode adventure @s
execute in the_nether as @a[distance=0..,team=husk] run gamemode survival @s