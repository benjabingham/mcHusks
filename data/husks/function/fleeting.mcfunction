function husks:updatelifepercent

#a rate of 10 equates to 70 minutes per 10%

execute if score @s lifePercent matches 150.. run scoreboard players add @s timeAlive 100
execute if score @s lifePercent matches 130.. run scoreboard players add @s timeAlive 80
execute if score @s lifePercent matches 110.. run scoreboard players add @s timeAlive 60
execute if score @s lifePercent matches 100.. run scoreboard players add @s timeAlive 40

execute if score @s lifePercent matches 70..99 run scoreboard players add @s timeAlive 15
execute if score @s lifePercent matches 50..69 run scoreboard players add @s timeAlive 10
execute if score @s lifePercent matches 40..49 run scoreboard players add @s timeAlive 7
execute if score @s lifePercent matches 10..39 run scoreboard players add @s timeAlive 5
execute if score @s lifePercent matches ..9 run scoreboard players add @s timeAlive 3

execute as @s[tag=husk] if score @s lifePercent matches 50.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 60.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 70.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 80.. run scoreboard players add @s timeAlive 150


execute as @s[tag=living] run function husks:livinglowlife
