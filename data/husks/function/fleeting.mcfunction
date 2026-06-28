execute if score @s timeAliveTrue matches 1 run team join living @s

execute if score @s timeAlive matches ..-800000 run scoreboard players add @s timeAlive 100
execute if score @s timeAlive matches -800000..0 run scoreboard players add @s timeAlive 50
execute if score @s timeAlive matches 0..1200000 run scoreboard players add @s timeAlive 10
execute if score @s timeAlive matches 1200000..4400000 run scoreboard players add @s timeAlive 10
execute if score @s timeAlive matches 4400000..5200000 run scoreboard players add @s timeAlive 7
execute if score @s timeAlive matches 5200000..6000000 run scoreboard players add @s timeAlive 5

execute if score @s timeAlive matches ..1200000 run attribute @s minecraft:max_health base set 20
execute if score @s timeAlive matches 1200000..2000000 run attribute @s minecraft:max_health base set 18
execute if score @s timeAlive matches 2000000..2800000 run attribute @s minecraft:max_health base set 16
execute if score @s timeAlive matches 2800000..3600000 run attribute @s minecraft:max_health base set 14
execute if score @s timeAlive matches 3600000..4400000 run attribute @s minecraft:max_health base set 12
execute if score @s timeAlive matches 4400000..5200000 run attribute @s minecraft:max_health base set 10
execute if score @s timeAlive matches 5200000..6000000 run attribute @s minecraft:max_health base set 8
execute if score @s timeAlive matches 6000000.. run attribute @s minecraft:max_health base set 6
