execute if score @s timeAlive matches ..920000 run scoreboard players add @s timeAlive 1

execute if score @s timeAlive matches ..80000 run attribute @s minecraft:max_health base set 20
execute if score @s timeAlive matches 80000..200000 run attribute @s minecraft:max_health base set 18
execute if score @s timeAlive matches 200000..320000 run attribute @s minecraft:max_health base set 16
execute if score @s timeAlive matches 320000..440000 run attribute @s minecraft:max_health base set 14
execute if score @s timeAlive matches 440000..560000 run attribute @s minecraft:max_health base set 12
execute if score @s timeAlive matches 560000..680000 run attribute @s minecraft:max_health base set 10
execute if score @s timeAlive matches 680000..800000 run attribute @s minecraft:max_health base set 8
execute if score @s timeAlive matches 800000.. run attribute @s minecraft:max_health base set 6
