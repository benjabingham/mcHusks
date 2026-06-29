tag @s add husk
tag @s remove living
team leave @s
team join husk @s
scoreboard players set @s timeAlive 8400000

execute in minecraft:the_nether run spreadplayers 0 0 2000 2000 false @s
function cavespread:spread
execute as @s at @s run playsound block.portal.trigger
execute as @a at @s run playsound block.trial_spawner.ambient_ominous

effect give @s night_vision infinite 0 true
effect give @s water_breathing infinite 0 false

execute if score @s huskDeaths matches ..1 run attribute @s minecraft:max_health base set 26
execute if score @s huskDeaths matches ..2 run effect give @s trial_omen infinite 0 true


execute if score @s huskDeaths matches 3 run attribute @s minecraft:max_health base set 16
execute if score @s huskDeaths matches 4 run attribute @s minecraft:max_health base set 14
execute if score @s huskDeaths matches 5.. run attribute @s minecraft:max_health base set 12
execute if score @s huskDeaths matches 6.. run effect give @s wither 30

execute if score @s huskDeaths matches ..6 run effect give @s strength infinite 0 true
execute if score @s huskDeaths matches 7.. run effect give @s slowness infinite 0 true


execute if score @s huskDeaths matches ..1 run say has become a husk.

execute if score @s huskDeaths matches 2..7 run say is losing power in death...