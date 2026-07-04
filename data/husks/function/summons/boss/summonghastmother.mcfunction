summon ghast ~ -100 ~ {DeathLootTable:"husks:boss/ghastmother",PersistenceRequired:1b,Tags:["ghasts-to-teleport","ghast-boss","summoned"],CustomNameVisible:0b,CustomName:"Ghastmother",attributes:[{id:"minecraft:scale",base:5},{id:"max_health",base:60},{id:"follow_range",base:60},{id:"movement_speed",base:1}],Team:HideNames}

execute as @a at @s run playsound entity.ghast.scream player @a
execute as @e[tag=ghasts-to-teleport] run spreadplayers ~ ~ 0 5 true @s
execute as @e[tag=ghasts-to-teleport] run tp @s ~ ~25 ~
execute at @a as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~

execute as @e[tag=ghasts-to-teleport] run tag @s remove ghasts-to-teleport