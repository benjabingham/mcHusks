scoreboard players operation @s deaths = 0 deaths
scoreboard players operation @s timeAlive = 0 timeAlive
scoreboard players operation @s timeAliveTrue = 0 timeAliveTrue


execute if score ☻ souls matches ..0 run function husks:banish
execute if score ☻ souls matches 1.. run function husks:revive