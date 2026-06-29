function husks:updatelifepercent

execute if score @s lifePercent matches 1..49 run say has gotten a taste of life!
execute if score @s lifePercent matches 50.. run say feels like they're alive again!
execute store result score huskhp vars run attribute @s max_health get

execute if score @s lifePercent matches 1.. run effect give @s absorption infinite
execute if score @s lifePercent matches 10.. run effect clear @s slowness
execute if score @s lifePercent matches 10.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier1 2 add_value
execute if score @s lifePercent matches 15.. run effect give @s strength 1800 0 true
execute if score @s lifePercent matches 20.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier2 2 add_value
execute if score @s lifePercent matches 25.. run effect give @s regeneration 1800
execute if score @s lifePercent matches 30.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier3 2 add_value
execute if score @s lifePercent matches 40.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier4 2 add_value
execute if score @s lifePercent matches 50.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier5 2 add_value

execute if score @s lifePercent matches 50.. run advancement grant @s only husks/afterlife
execute if score @s lifePercent matches 50.. run gamemode survival @s

execute if score @s lifePercent matches 60.. run execute if score huskhp vars matches ..18 run attribute @s max_health modifier add modifier6 2 add_value

execute if score @s lifePercent matches 150.. run advancement grant @s only husks/hedonism
