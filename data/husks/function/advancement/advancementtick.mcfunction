execute as @a if score @s currentHealth matches 1 run advancement grant @s only thrills/half_heart

execute as @a if score @s damaged matches 1 run execute as @s if score @s currentHealth matches ..6 run scoreboard players add @s times_damaged_low 1

execute as @a if score @s times_damaged_low matches 20.. run advancement grant @s only thrills/low_health_often
execute as @a if score @s damaged matches 1.. run scoreboard players set @s damaged 0

execute as @a if score @s threw_xp_bottle matches 1.. run advancement grant @s only misc/exp_bottle
execute as @a if score @s threw_xp_bottle matches 1.. run scoreboard players set @s threw_xp_bottle 0

#this can be optimized by only looking for diamonds within a block of the player, and adding a "thrown-diamonds" tag
#then, don't care about the predicate for other diamonds, just look for the tag
execute as @e[type=item,predicate=husks:is_diamond_block,tag=!burned] at @s if block ~ ~-0.01 ~ lava run scoreboard players add @p diamond_blocks_sacrificed 1
execute as @e[type=item,predicate=husks:is_diamond_block,tag=!burned] at @s if block ~ ~-0.01 ~ lava run tag @s add burned

execute as @a if score @s diamond_blocks_sacrificed matches 1 run advancement grant @s only husks/sacrifice_diamonds 1
execute as @a if score @s diamond_blocks_sacrificed matches 2 run advancement grant @s only husks/sacrifice_diamonds 2
execute as @a if score @s diamond_blocks_sacrificed matches 3 run advancement grant @s only husks/sacrifice_diamonds 3
execute as @a if score @s diamond_blocks_sacrificed matches 4 run advancement grant @s only husks/sacrifice_diamonds 4
execute as @a if score @s diamond_blocks_sacrificed matches 5 run advancement grant @s only husks/sacrifice_diamonds 5
execute as @a if score @s diamond_blocks_sacrificed matches 6 run advancement grant @s only husks/sacrifice_diamonds 6
execute as @a if score @s diamond_blocks_sacrificed matches 7 run advancement grant @s only husks/sacrifice_diamonds 7
execute as @a if score @s diamond_blocks_sacrificed matches 8 run advancement grant @s only husks/sacrifice_diamonds 8
execute as @a if score @s diamond_blocks_sacrificed matches 9 run advancement grant @s only husks/sacrifice_diamonds 9
execute as @a if score @s diamond_blocks_sacrificed matches 10.. run advancement grant @s only husks/sacrifice_diamonds
execute as @a if score @s diamond_blocks_sacrificed matches 10.. run scoreboard players set @s diamond_blocks_sacrificed 0

scoreboard players add @a time_since_animal_product 1
scoreboard players add @a time_since_non_raw 1
scoreboard players add @a time_since_non_sweet 1

execute as @a if score @s time_since_animal_product matches 120000 run advancement grant @s only tastes/vegan
execute as @a if score @s time_since_non_raw matches 120000 run advancement grant @s only tastes/raw_diet
execute as @a if score @s time_since_non_sweet matches 120000 run advancement grant @s only tastes/sweets_only

execute as @a if score @s creepers_killed matches 20.. run advancement grant @s only thrills/creeper_hunter