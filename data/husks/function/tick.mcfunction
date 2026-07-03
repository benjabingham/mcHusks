execute as @a if score @s deaths matches 1 run attribute @s minecraft:max_health base set 20
execute as @a if score @s ondeath matches 1.. run function husks:ondeath

execute as @e[type=player] if score @s deaths matches 1 run function husks:playerdeath
execute as @e[type=player,team=!husk] run team join living
tag @a[tag=!husk] add living

execute as @e[type=player] run scoreboard players add @s timeAliveTrue 1
execute as @e[type=player] run function husks:fleeting
#double countdown for living players past 5 hours
#execute as @e[type=player,team=living] if score @s timeAliveTrue matches 360000.. run function husks:fleeting

execute as @a if score @s currentHealth matches 1 run advancement grant @s only living/half_heart

execute in overworld as @a[distance=0..,team=husk] if score @s lifePercent matches ..49 run gamemode adventure @s
execute in the_nether as @a[distance=0..,team=husk] run gamemode survival @s

execute as @a if score @s printscore matches 1.. run function husks:printscore
execute as @a[tag=living] run function husks:updatelongestlife

scoreboard players add scoreboardtimer vars 1
execute if score scoreboardtimer vars matches 200 run scoreboard objectives setdisplay sidebar souls

#husks have trouble in daylight
execute store result score timeOfDay vars run time query day
execute if predicate {condition: "weather_check", "raining": false, "thundering":false} run execute if score timeOfDay vars matches 0..12000 run execute in overworld as @a[team=husk] at @s positioned over motion_blocking_no_leaves if entity @s[dy=999] run effect give @s slowness 2
execute if predicate {condition: "weather_check", "raining": false, "thundering":false} run execute if score timeOfDay vars matches 0..12000 run execute in overworld as @a[team=husk] at @s positioned over motion_blocking_no_leaves if entity @s[dy=999] run effect give @s darkness 5

#husks get super powers in thunder
execute if predicate {condition: "weather_check", "thundering":true} run execute in overworld as @a[team=husk] at @s positioned over motion_blocking_no_leaves if entity @s[dy=999] run effect give @s regeneration 10
execute if predicate {condition: "weather_check", "thundering":true} run execute in overworld as @a[team=husk] at @s positioned over motion_blocking_no_leaves if entity @s[dy=999] run effect give @s speed 10

scoreboard players add wolfattacktimer vars 1
execute if score wolfattacktimer vars matches 600.. run function husks:wolfattack

execute as @a if score @s threw_xp_bottle matches 1.. run advancement grant @s only living/exp_bottle
execute as @a if score @s threw_xp_bottle matches 1.. run scoreboard players set @s threw_xp_bottle 0

function husks:summons/boss/bossbehaviors