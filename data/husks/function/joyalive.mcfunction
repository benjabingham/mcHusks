function husks:updatelifepercent

execute if score @s lifePercent matches 101.. run say is overflowing with life!
execute if score @s lifePercent matches 101.. run effect give @s absorption infinite 0 true 
execute if score @s lifePercent matches 101.. run xp add @s 1 levels

execute if score @s lifePercent matches 110.. run effect give @s speed 1800 0 true
execute if score @s lifePercent matches 110.. run xp add @s 1 levels

execute if score @s lifePercent matches 120.. run effect give @s haste 3600 0 true
execute if score @s lifePercent matches 120.. run xp add @s 1 levels

execute if score @s lifePercent matches 130.. run effect give @s absorption infinite 1 false
execute if score @s lifePercent matches 130.. run effect give @s speed 3600 0 true
execute if score @s lifePercent matches 130.. run xp add @s 2 levels

execute if score @s lifePercent matches 150.. run advancement grant @s only husks/hedonism
