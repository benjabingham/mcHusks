execute at @s[team=husk] run function husks:summons/summonlost
execute as @s[team=living] run execute as @a run execute if score @s ondeath matches 0 run advancement grant @s only misc/player_dies
xp set @s 0 levels
scoreboard players set @s ondeath 0

scoreboard players set @s time_since_animal_product 0
scoreboard players set @s time_since_non_raw 0
scoreboard players set @s time_since_non_sweet 0
scoreboard players set @s animals_bred 0
scoreboard players set @s times_damaged_low 0
scoreboard players set @s creepers_killed 0
scoreboard players set @s hoglins_killed 0

advancement revoke @s from tastes/1_root
advancement revoke @s from husbandry/2_root
advancement revoke @s from exploration/3_root
advancement revoke @s from thrills/5_root
advancement revoke @s from misc/6_root
#this can be removed once all root advancements are purged
advancement revoke @a from living/root



