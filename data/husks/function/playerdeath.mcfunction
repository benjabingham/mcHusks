scoreboard players operation @s deaths = 0 deaths
scoreboard players operation @s timeAlive = 0 timeAlive
scoreboard players operation @s timeAliveTrue = 0 timeAliveTrue

advancement revoke @s from tastes/1_root
advancement revoke @s from husbandry/2_root
advancement revoke @s from exploration/3_root
advancement revoke @s from thrills/5_root
advancement revoke @s from misc/6_root

scoreboard players set @s time_since_animal_product 0
scoreboard players set @s time_since_non_raw 0
scoreboard players set @s time_since_non_sweet 0
scoreboard players set @s animals_bred 0
scoreboard players set @s times_damaged_low 0
scoreboard players set @s creepers_killed 0



execute if score ☻ souls matches ..0 run function husks:banish
execute if score ☻ souls matches 1.. run function husks:revive