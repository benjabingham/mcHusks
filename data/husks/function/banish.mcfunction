tag @s add husk
tag @s remove living
team join husk @s


gamemode adventure @s


execute in minecraft:the_nether run spreadplayers 0 0 2000 2000 false @s
function cavespread:spread
execute as @a at @s run playsound block.portal.trigger

effect give @s night_vision infinite 0 true
effect give @s water_breathing infinite 0 true

execute if score @s huskDeaths matches ..1 run effect give @s resistance infinite
execute if score @s huskDeaths matches ..2 run effect give @s absorption infinite
execute if score @s huskDeaths matches ..2 run effect give @s strength infinite 0 true

execute if score @s huskDeaths matches 4.. run effect give @s slowness infinite 0 true
execute if score @s huskDeaths matches 5.. run effect give @s hunger infinite

execute if score @s huskDeaths matches ..1 run say has become a husk.

execute if score @s huskDeaths matches 2..5 run say is losing power in death...