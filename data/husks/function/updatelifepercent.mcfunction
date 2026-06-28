scoreboard players operation @s lifePercent = @s timeAlive 
scoreboard players set timeMultiplier vars -84000
scoreboard players set 100 vars 100

scoreboard players operation @s lifePercent /= timeMultiplier vars
scoreboard players add @s lifePercent 101