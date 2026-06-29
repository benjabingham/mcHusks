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

execute as @s[tag=husk] if score @s lifePercent matches 25.. run scoreboard players add @s timeAlive 10
execute as @s[tag=husk] if score @s lifePercent matches 50.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 60.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 70.. run scoreboard players add @s timeAlive 150
execute as @s[tag=husk] if score @s lifePercent matches 80.. run scoreboard players add @s timeAlive 150

execute as @s[tag=husk] if score @s huskDeaths matches 2.. run scoreboard players add @s timeAlive 2
execute as @s[tag=husk] if score @s huskDeaths matches 3.. run scoreboard players add @s timeAlive 2
execute as @s[tag=husk] if score @s huskDeaths matches 4.. run scoreboard players add @s timeAlive 2
execute as @s[tag=husk] if score @s huskDeaths matches 5.. run scoreboard players add @s timeAlive 2
execute as @s[tag=husk] if score @s huskDeaths matches 6.. run scoreboard players add @s timeAlive 2

execute as @s if score @s timeAlive matches 8407000.. run scoreboard players set @s timeAlive 8407000

execute if score @s lifePercent matches ..9 run attribute @s max_health modifier remove modifier1
execute if score @s lifePercent matches ..19 run attribute @s max_health modifier remove modifier2
execute if score @s lifePercent matches ..29 run attribute @s max_health modifier remove modifier3
execute if score @s lifePercent matches ..39 run attribute @s max_health modifier remove modifier4
execute if score @s lifePercent matches ..49 run attribute @s max_health modifier remove modifier5
execute if score @s lifePercent matches ..59 run attribute @s max_health modifier remove modifier6

execute as @s[tag=living] run function husks:livinglowlife
