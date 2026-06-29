scoreboard players operation @s temp = @s timeAliveTrue
scoreboard players operation @s temp /= ticksperminute vars
scoreboard players add @s longestLife 0

execute if score @s temp > @s longestLife run scoreboard players operation @s longestLife = @s temp