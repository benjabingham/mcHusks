execute if score @s lifePercent matches 90.. run attribute @s minecraft:max_health base set 20
execute if score @s lifePercent matches 80..89 run attribute @s minecraft:max_health base set 18
execute if score @s lifePercent matches 70..79 run attribute @s minecraft:max_health base set 16
execute if score @s lifePercent matches 60..69 run attribute @s minecraft:max_health base set 14
execute if score @s lifePercent matches 50..59 run attribute @s minecraft:max_health base set 12
execute if score @s lifePercent matches 40..49 run attribute @s minecraft:max_health base set 10
execute if score @s lifePercent matches 30..39 run attribute @s minecraft:max_health base set 8
execute if score @s lifePercent matches 20..29 run attribute @s minecraft:max_health base set 6
execute if score @s lifePercent matches 10..19 run attribute @s minecraft:max_health base set 4
execute if score @s lifePercent matches ..9 run attribute @s minecraft:max_health base set 2
execute if score @s lifePercent matches ..0 run effect give @s wither 60