execute if score @s timeAliveTrue matches 1 run team join living @s

execute if score @s timeAlive matches ..800000 run scoreboard players add @s timeAlive 30
execute if score @s timeAlive matches -800000..0 run scoreboard players add @s timeAlive 20
execute if score @s timeAlive matches 0..800000 run scoreboard players add @s timeAlive 12
execute if score @s timeAlive matches 800000..4400000 run scoreboard players add @s timeAlive 10
execute if score @s timeAlive matches 4400000..5600000 run scoreboard players add @s timeAlive 8
execute if score @s timeAlive matches 5600000..6800000 run scoreboard players add @s timeAlive 6
execute if score @s timeAlive matches 5600000..6800000 run scoreboard players add @s timeAlive 4
execute if score @s timeAlive matches 6800000..8000000 run scoreboard players add @s timeAlive 2

execute if score @s timeAlive matches ..800000 run attribute @s minecraft:max_health base set 20
execute if score @s timeAlive matches 800000..2000000 run attribute @s minecraft:max_health base set 18
execute if score @s timeAlive matches 2000000..3200000 run attribute @s minecraft:max_health base set 16
execute if score @s timeAlive matches 3200000..4400000 run attribute @s minecraft:max_health base set 14
execute if score @s timeAlive matches 4400000..5600000 run attribute @s minecraft:max_health base set 12
execute if score @s timeAlive matches 5600000..6800000 run attribute @s minecraft:max_health base set 10
execute if score @s timeAlive matches 6800000..8000000 run attribute @s minecraft:max_health base set 8
execute if score @s timeAlive matches 8000000.. run attribute @s minecraft:max_health base set 6
