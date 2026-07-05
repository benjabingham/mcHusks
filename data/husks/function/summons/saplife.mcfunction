execute at @s as @s run playsound ambient.soul_sand_valley.mood ambient @s ~ ~ ~
tellraw @s {"text":"Something has sapped your life force.","color":"dark_red","italic":true}
#cut timealive in half
#get remaining time
scoreboard players operation newTimeAlive vars = maxTimeAlive vars
scoreboard players operation newTimeAlive vars -= @s timeAlive
#divide in half
scoreboard players operation newTimeAlive vars /= two vars

scoreboard players operation @s timeAlive = maxTimeAlive vars
scoreboard players operation @s timeAlive -= newTimeAlive vars