execute as @e[type=player] if score @s deaths matches 1 run function husks:playerdeath

tag @a[tag=!husk] add living

scoreboard players add @a[tag=!husk] timeAlive 1