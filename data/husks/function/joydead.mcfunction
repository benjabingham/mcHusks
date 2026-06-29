function husks:updatelifepercent

execute if score @s lifePercent matches 1..49 run say has gotten a taste of life!
execute if score @s lifePercent matches 50.. run say feels like they're alive again!

execute if score @s lifePercent matches 1.. run effect give @s absorption infinite
execute if score @s lifePercent matches 10.. run effect clear @s slowness
execute if score @s lifePercent matches 10.. run effect give @s strength 3600 0 true
execute if score @s lifePercent matches 15.. run effect clear @s hunger
execute if score @s lifePercent matches 15.. run effect give @s absorption 3600
execute if score @s lifePercent matches 25.. run effect give @s regeneration 1800

execute if score @s lifePercent matches 50.. run advancement grant @s only husks/afterlife
execute if score @s lifePercent matches 50.. run gamemode survival @s
execute if score @s lifePercent matches 150.. run advancement grant @s only husks/hedonism
